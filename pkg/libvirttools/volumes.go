/*
Copyright 2017 Mirantis

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package libvirttools

import (
	libvirtxml "github.com/libvirt/libvirt-go-xml"
	digest "github.com/opencontainers/go-digest"

	"github.com/Equinix-Metal/virtlet/pkg/fs"
	"github.com/Equinix-Metal/virtlet/pkg/metadata/types"
	"github.com/Equinix-Metal/virtlet/pkg/utils"
	"github.com/Equinix-Metal/virtlet/pkg/virt"
)

// ImageManager describes an image info provider.
type ImageManager interface {
	// GetImagePathDigestAndVirtualSize returns the path, image
	// digest ("sha256:...") and the size in bytes for the
	// specified image.
	GetImagePathDigestAndVirtualSize(ref string) (string, digest.Digest, uint64, error)
	// FilesystemStats returns filesystem statistics for the specified image.
	FilesystemStats() (*types.FilesystemStats, error)
	// BytesUsedBy returns the size of the specified file.
	BytesUsedBy(path string) (uint64, error)
}

type volumeOwner interface {
	StoragePool() (virt.StoragePool, error)
	DomainConnection() virt.DomainConnection
	StorageConnection() virt.StorageConnection
	ImageManager() ImageManager
	RawDevices() []string
	KubeletRootDir() string
	VolumePoolName() string
	FileSystem() fs.FileSystem
	SharedFilesystemPath() string
	Commander() utils.Commander
}

// VMVolumeSource is a function that provides `VMVolume`s for VMs
type VMVolumeSource func(config *types.VMConfig, owner volumeOwner) ([]VMVolume, error)

// VMVolume describes a volume provider.
type VMVolume interface {
	IsDisk() bool
	UUID() string
	Setup() (*libvirtxml.DomainDisk, *libvirtxml.DomainFilesystem, error)
	WriteImage(diskPathMap) error
	Teardown() error
}

type volumeBase struct {
	config *types.VMConfig
	owner  volumeOwner
}

func (v *volumeBase) WriteImage(diskPathMap) error { return nil }
func (v *volumeBase) Teardown() error              { return nil }

// CombineVMVolumeSources returns a function which will pass VM configuration
// to all listed volumes sources combining returned by them `VMVolume`s.
func CombineVMVolumeSources(srcs ...VMVolumeSource) VMVolumeSource {
	return func(config *types.VMConfig, owner volumeOwner) ([]VMVolume, error) {
		var vols []VMVolume
		for _, src := range srcs {
			vs, err := src(config, owner)
			if err != nil {
				return nil, err
			}
			vols = append(vols, vs...)
		}
		return vols, nil
	}
}
