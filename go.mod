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
	github.com/Equinix-Metal/virtlet v1.5.2-0.20210807010419-342346535dc5
	github.com/aykevl/osfs v0.0.0-20170216152041-e4b1ff739ec9
	github.com/boltdb/bolt v1.3.2-0.20180302180052-fd01fc79c553
	github.com/containernetworking/cni v0.5.2
	github.com/davecgh/go-spew v1.1.1
	github.com/docker/distribution v2.6.0-rc.1.0.20170726174610-edc3ab29cdff+incompatible
	github.com/docker/docker v1.4.2-0.20170731201938-4f3616fb1c11
	github.com/docker/engine-api v0.3.2-0.20160509170047-dea108d3aa0c
	github.com/docker/go-connections v0.3.0
	github.com/ghodss/yaml v1.0.0
	github.com/go-openapi/spec v0.17.2 // indirect
	github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b
	github.com/jonboulle/clockwork v0.1.1-0.20160907122059-bcac9884e750
	github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51
	github.com/libvirt/libvirt-go v3.3.1-0.20170508165552-c3209e4ba8b8+incompatible
	github.com/libvirt/libvirt-go-xml v0.0.0-20171128113925-661c62056664
	github.com/lithammer/dedent v1.1.0
	github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d
	github.com/onsi/ginkgo v1.14.0
	github.com/onsi/gomega v1.10.1
	github.com/opencontainers/go-digest v0.0.0-20170106003457-a6d0ee40d420
	github.com/pmezard/go-difflib v1.0.0
	github.com/spf13/cobra v1.1.3
	github.com/spf13/pflag v1.0.5
	github.com/vishvananda/netlink v1.0.1-0.20180623192917-028453c77ce5
	go.universe.tf/netboot v0.0.0-20190215013330-01f30467ac8e
	golang.org/x/crypto v0.0.0-20201002170205-7f63de1d35b0
	golang.org/x/net v0.0.0-20210520170846-37e1c6afe023
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c
	golang.org/x/sys v0.0.0-20210616094352-59db8d763f22
	google.golang.org/grpc v1.39.0
	k8s.io/api v0.22.0
	k8s.io/apiextensions-apiserver v0.0.0-20180426153726-e8ab413e0ae1
	k8s.io/apimachinery v0.22.0
	k8s.io/cli-runtime v0.22.0 // indirect
	k8s.io/client-go v0.22.0
	//k8s.io/apimachinery v0.22.0
	k8s.io/cri-api v0.22.0
	k8s.io/kubernetes v1.10.2
	sigs.k8s.io/kustomize v2.0.3+incompatible // indirect
)
