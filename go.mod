module equinix.com/vpe/virtlet

go 1.16

replace equinix.com/vpe/api => ./pkg/api

replace equinix.com/vpe/blockdev => ./pkg/blockdev

replace equinix.com/vpe/client => ./pkg/client

replace equinix.com/vpe/cni => ./pkg/cni

replace equinix.com/vpe/config => ./pkg/config

replace equinix.com/vpe/dhcp => ./pkg/dhcp

replace equinix.com/vpe/diag => ./pkg/diag

replace equinix.com/vpe/diskimage => ./pkg/diskimage

replace equinix.com/vpe/flexvolume => ./pkg/flexvolume

replace equinix.com/vpe/fs => ./pkg/fs

replace equinix.com/vpe/image => ./pkg/image

replace equinix.com/vpe/imagetranslation => ./pkg/imagetranslation

replace equinix.com/vpe/libvirttools => ./pkg/libvirttools

replace equinix.com/vpe/manager => ./pkg/manager

replace equinix.com/vpe/metadata => ./pkg/metadata

replace equinix.com/vpe/nettools => ./pkg/nettools

replace equinix.com/vpe/network => ./pkg/network

replace equinix.com/vpe/nsfix => ./pkg/nsfix

replace equinix.com/vpe/stream => ./pkg/stream

replace equinix.com/vpe/tapmanager => ./pkg/tapmanager

replace equinix.com/vpe/tools => ./pkg/tools

replace equinix.com/vpe/utils => ./pkg/utils

replace equinix.com/vpe/version => ./pkg/version

replace equinix.com/vpe/virt => ./pkg/virt

replace k8s.io/client-go => k8s.io/client-go v0.20.4

replace k8s.io/apimachinery => k8s.io/apimachinery v0.19.0

require (
	github.com/Equinix-Metal/virtlet v1.5.2-0.20210807010419-342346535dc5 // indirect
	k8s.io/api v0.22.0 // indirect
	//k8s.io/apimachinery v0.22.0
	//k8s.io/client-go v0.20.4
	k8s.io/cri-api v0.22.0 // indirect
	k8s.io/client-go v0.20.4 // indirect
)
