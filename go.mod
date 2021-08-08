module equinix.com/vpe/virtlet

go 1.16

replace (
	//k8s.io/api => ./staging/src/k8s.io/api
	//k8s.io/apiextensions-apiserver => ./staging/src/k8s.io/apiextensions-apiserver
	//k8s.io/apimachinery => ./staging/src/k8s.io/apimachinery
	//k8s.io/apiserver => ./staging/src/k8s.io/apiserver
	//k8s.io/cli-runtime => k8s.io/kubernetes/staging/src/k8s.io/cli-runtime
	//k8s.io/client-go => ./staging/src/k8s.io/client-go
	equinix.com/vpe/api => ./pkg/api
	equinix.com/vpe/blockdev => ./pkg/blockdev
	equinix.com/vpe/client => ./pkg/client
	equinix.com/vpe/cni => ./pkg/cni
	equinix.com/vpe/config => ./pkg/config
	equinix.com/vpe/dhcp => ./pkg/dhcp
	equinix.com/vpe/diag => ./pkg/diag
	equinix.com/vpe/diskimage => ./pkg/diskimage
	equinix.com/vpe/flexvolume => ./pkg/flexvolume
	equinix.com/vpe/fs => ./pkg/fs
	equinix.com/vpe/image => ./pkg/image
	equinix.com/vpe/imagetranslation => ./pkg/imagetranslation
	equinix.com/vpe/libvirttools => ./pkg/libvirttools
	equinix.com/vpe/manager => ./pkg/manager
	equinix.com/vpe/metadata => ./pkg/metadata
	equinix.com/vpe/nettools => ./pkg/nettools
	equinix.com/vpe/network => ./pkg/network
	equinix.com/vpe/nsfix => ./pkg/nsfix
	equinix.com/vpe/stream => ./pkg/stream
	equinix.com/vpe/tapmanager => ./pkg/tapmanager
	equinix.com/vpe/tools => ./pkg/tools
	equinix.com/vpe/utils => ./pkg/utils
	equinix.com/vpe/version => ./pkg/version
	equinix.com/vpe/virt => ./pkg/virt
	equinix.com/vpe/virtlet/pkg/libvirttools => ./pkg/libvirttools
	k8s.io/apimachinery => k8s.io/apimachinery v0.22.0
	k8s.io/client-go => k8s.io/client-go v0.20.4
)

require (
	github.com/Equinix-Metal/virtlet v1.5.2-0.20210807010419-342346535dc5 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-openapi/spec v0.17.2 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	golang.org/x/crypto v0.0.0-20201002170205-7f63de1d35b0 // indirect
	golang.org/x/net v0.0.0-20210520170846-37e1c6afe023 // indirect
	golang.org/x/sys v0.0.0-20210616094352-59db8d763f22 // indirect
	k8s.io/api v0.22.0 // indirect
	k8s.io/apimachinery v0.22.0 // indirect
	k8s.io/cli-runtime v0.22.0 // indirect
	k8s.io/client-go v0.22.0 // indirect
	//k8s.io/apimachinery v0.22.0
	k8s.io/cri-api v0.22.0 // indirect
	sigs.k8s.io/kustomize v2.0.3+incompatible // indirect
)
