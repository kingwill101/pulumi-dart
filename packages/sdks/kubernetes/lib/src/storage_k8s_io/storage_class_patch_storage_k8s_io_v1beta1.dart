// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/topology_selector_term_patch.dart';
import '../meta/object_meta_patch.dart';

/// StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
///
/// StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
class StorageClassPatchStorageK8sIoV1beta1 {
  /// AllowVolumeExpansion shows whether the storage class allow volume expand
  final bool? allowVolumeExpansion;
  /// Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  final List<TopologySelectorTermPatch>? allowedTopologies;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMetaPatch? metadata;
  /// Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  final List<String>? mountOptions;
  /// Parameters holds the parameters for the provisioner that should create volumes of this storage class.
  final Map<String, String>? parameters;
  /// Provisioner indicates the type of the provisioner.
  final String? provisioner;
  /// Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
  final String? reclaimPolicy;
  /// VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  final String? volumeBindingMode;

  /// Creates a new [StorageClassPatchStorageK8sIoV1beta1].
  /// [allowVolumeExpansion] AllowVolumeExpansion shows whether the storage class allow volume expand
  /// [allowedTopologies] Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [mountOptions] Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  /// [parameters] Parameters holds the parameters for the provisioner that should create volumes of this storage class.
  /// [provisioner] Provisioner indicates the type of the provisioner.
  /// [reclaimPolicy] Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
  /// [volumeBindingMode] VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  StorageClassPatchStorageK8sIoV1beta1({
    this.allowVolumeExpansion,
    this.allowedTopologies,
    this.apiVersion,
    this.kind,
    this.metadata,
    this.mountOptions,
    this.parameters,
    this.provisioner,
    this.reclaimPolicy,
    this.volumeBindingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowVolumeExpansion': ?allowVolumeExpansion,
      'allowedTopologies': ?allowedTopologies == null ? null : pulumi.Input.encodeList<TopologySelectorTermPatch, Map<String, dynamic>>(allowedTopologies!, (value) => value.toMap()),
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'mountOptions': ?mountOptions,
      'parameters': ?parameters,
      'provisioner': ?provisioner,
      'reclaimPolicy': ?reclaimPolicy,
      'volumeBindingMode': ?volumeBindingMode,
    };
  }

  factory StorageClassPatchStorageK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return StorageClassPatchStorageK8sIoV1beta1(
      allowVolumeExpansion: map['allowVolumeExpansion'] == null ? null : map['allowVolumeExpansion'] as bool,
      allowedTopologies: map['allowedTopologies'] == null ? null : pulumi.Input.decodeList<TopologySelectorTermPatch>(map['allowedTopologies'], (value) => TopologySelectorTermPatch.fromMap((value as Map).cast<String, dynamic>())),
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions'] as List).cast<String>(),
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      provisioner: map['provisioner'] == null ? null : map['provisioner'] as String,
      reclaimPolicy: map['reclaimPolicy'] == null ? null : map['reclaimPolicy'] as String,
      volumeBindingMode: map['volumeBindingMode'] == null ? null : map['volumeBindingMode'] as String,
    );
  }
}

