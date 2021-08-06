/*
Copyright 2019 Mirantis

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

// Code generated by informer-gen. DO NOT EDIT.

package v1

import (
	time "time"

	virtlet_k8s_v1 "github.com/Equinix-Metal/virtlet/pkg/api/virtlet.k8s/v1"
	versioned "github.com/Equinix-Metal/virtlet/pkg/client/clientset/versioned"
	internalinterfaces "github.com/Equinix-Metal/virtlet/pkg/client/informers/externalversions/internalinterfaces"
	v1 "github.com/Equinix-Metal/virtlet/pkg/client/listers/virtlet.k8s/v1"
	meta_v1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	runtime "k8s.io/apimachinery/pkg/runtime"
	watch "k8s.io/apimachinery/pkg/watch"
	cache "k8s.io/client-go/tools/cache"
)

// VirtletImageMappingInformer provides access to a shared informer and lister for
// VirtletImageMappings.
type VirtletImageMappingInformer interface {
	Informer() cache.SharedIndexInformer
	Lister() v1.VirtletImageMappingLister
}

type virtletImageMappingInformer struct {
	factory          internalinterfaces.SharedInformerFactory
	tweakListOptions internalinterfaces.TweakListOptionsFunc
	namespace        string
}

// NewVirtletImageMappingInformer constructs a new informer for VirtletImageMapping type.
// Always prefer using an informer factory to get a shared informer instead of getting an independent
// one. This reduces memory footprint and number of connections to the server.
func NewVirtletImageMappingInformer(client versioned.Interface, namespace string, resyncPeriod time.Duration, indexers cache.Indexers) cache.SharedIndexInformer {
	return NewFilteredVirtletImageMappingInformer(client, namespace, resyncPeriod, indexers, nil)
}

// NewFilteredVirtletImageMappingInformer constructs a new informer for VirtletImageMapping type.
// Always prefer using an informer factory to get a shared informer instead of getting an independent
// one. This reduces memory footprint and number of connections to the server.
func NewFilteredVirtletImageMappingInformer(client versioned.Interface, namespace string, resyncPeriod time.Duration, indexers cache.Indexers, tweakListOptions internalinterfaces.TweakListOptionsFunc) cache.SharedIndexInformer {
	return cache.NewSharedIndexInformer(
		&cache.ListWatch{
			ListFunc: func(options meta_v1.ListOptions) (runtime.Object, error) {
				if tweakListOptions != nil {
					tweakListOptions(&options)
				}
				return client.VirtletV1().VirtletImageMappings(namespace).List(options)
			},
			WatchFunc: func(options meta_v1.ListOptions) (watch.Interface, error) {
				if tweakListOptions != nil {
					tweakListOptions(&options)
				}
				return client.VirtletV1().VirtletImageMappings(namespace).Watch(options)
			},
		},
		&virtlet_k8s_v1.VirtletImageMapping{},
		resyncPeriod,
		indexers,
	)
}

func (f *virtletImageMappingInformer) defaultInformer(client versioned.Interface, resyncPeriod time.Duration) cache.SharedIndexInformer {
	return NewFilteredVirtletImageMappingInformer(client, f.namespace, resyncPeriod, cache.Indexers{cache.NamespaceIndex: cache.MetaNamespaceIndexFunc}, f.tweakListOptions)
}

func (f *virtletImageMappingInformer) Informer() cache.SharedIndexInformer {
	return f.factory.InformerFor(&virtlet_k8s_v1.VirtletImageMapping{}, f.defaultInformer)
}

func (f *virtletImageMappingInformer) Lister() v1.VirtletImageMappingLister {
	return v1.NewVirtletImageMappingLister(f.Informer().GetIndexer())
}
