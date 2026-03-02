// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/topology_selector_term_patch.dart';
import '../meta/object_meta_patch.dart';

/// {@template pulumi_storage_k8s_io_v1_storage_class_patch_args_doc}
/// The set of arguments for StorageClassPatch.
/// {@endtemplate}
/// {@macro pulumi_storage_k8s_io_v1_storage_class_patch_args_doc}
class StorageClassPatchArgs {
  /// allowVolumeExpansion shows whether the storage class allow volume expand.
  final pulumi.Input<bool>? allowVolumeExpansion;
  /// allowedTopologies restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  final pulumi.Input<List<TopologySelectorTermPatch>>? allowedTopologies;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// mountOptions controls the mountOptions for dynamically provisioned PersistentVolumes of this storage class. e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  final pulumi.Input<List<String>>? mountOptions;
  /// parameters holds the parameters for the provisioner that should create volumes of this storage class.
  final pulumi.Input<Map<String, String>>? parameters;
  /// provisioner indicates the type of the provisioner.
  final pulumi.Input<String>? provisioner;
  /// reclaimPolicy controls the reclaimPolicy for dynamically provisioned PersistentVolumes of this storage class. Defaults to Delete.
  final pulumi.Input<String>? reclaimPolicy;
  /// volumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  final pulumi.Input<String>? volumeBindingMode;

  /// Creates a new [StorageClassPatchArgs].
  /// [allowVolumeExpansion] allowVolumeExpansion shows whether the storage class allow volume expand.
  /// [allowedTopologies] allowedTopologies restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [mountOptions] mountOptions controls the mountOptions for dynamically provisioned PersistentVolumes of this storage class. e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  /// [parameters] parameters holds the parameters for the provisioner that should create volumes of this storage class.
  /// [provisioner] provisioner indicates the type of the provisioner.
  /// [reclaimPolicy] reclaimPolicy controls the reclaimPolicy for dynamically provisioned PersistentVolumes of this storage class. Defaults to Delete.
  /// [volumeBindingMode] volumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  StorageClassPatchArgs({
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
      'allowedTopologies': ?pulumi.Input.mapOptionalInputValue<List<TopologySelectorTermPatch>, List<Map<String, dynamic>>>(allowedTopologies, (value) => pulumi.Input.encodeList<TopologySelectorTermPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'mountOptions': ?mountOptions,
      'parameters': ?parameters,
      'provisioner': ?provisioner,
      'reclaimPolicy': ?reclaimPolicy,
      'volumeBindingMode': ?volumeBindingMode,
    };
  }

  factory StorageClassPatchArgs.fromMap(Map<String, dynamic> map) {
    return StorageClassPatchArgs(
      allowVolumeExpansion: map['allowVolumeExpansion'] == null ? null : (map['allowVolumeExpansion'] as bool).input(),
      allowedTopologies: map['allowedTopologies'] == null ? null : (pulumi.Input.decodeList<TopologySelectorTermPatch>(map['allowedTopologies'], (value) => TopologySelectorTermPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      mountOptions: map['mountOptions'] == null ? null : ((map['mountOptions'] as List).cast<String>()).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      provisioner: map['provisioner'] == null ? null : (map['provisioner'] as String).input(),
      reclaimPolicy: map['reclaimPolicy'] == null ? null : (map['reclaimPolicy'] as String).input(),
      volumeBindingMode: map['volumeBindingMode'] == null ? null : (map['volumeBindingMode'] as String).input(),
    );
  }
}

