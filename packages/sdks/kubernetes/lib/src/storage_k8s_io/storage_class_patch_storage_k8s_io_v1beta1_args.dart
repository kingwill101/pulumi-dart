// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/topology_selector_term_patch.dart';
import '../meta/object_meta_patch.dart';

/// {@template pulumi_storage_k8s_io_v1beta1_storage_class_patch_storage_k8s_io_v1beta1_args_doc}
/// The set of arguments for StorageClassPatch.
/// {@endtemplate}
/// {@macro pulumi_storage_k8s_io_v1beta1_storage_class_patch_storage_k8s_io_v1beta1_args_doc}
class StorageClassPatchStorageK8sIoV1beta1Args {
  /// AllowVolumeExpansion shows whether the storage class allow volume expand
  final pulumi.Input<bool>? allowVolumeExpansion;
  /// Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  final pulumi.Input<List<TopologySelectorTermPatch>>? allowedTopologies;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  final pulumi.Input<List<String>>? mountOptions;
  /// Parameters holds the parameters for the provisioner that should create volumes of this storage class.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Provisioner indicates the type of the provisioner.
  final pulumi.Input<String>? provisioner;
  /// Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
  final pulumi.Input<String>? reclaimPolicy;
  /// VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  final pulumi.Input<String>? volumeBindingMode;

  /// Creates a new [StorageClassPatchStorageK8sIoV1beta1Args].
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
  const StorageClassPatchStorageK8sIoV1beta1Args({
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

  factory StorageClassPatchStorageK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return StorageClassPatchStorageK8sIoV1beta1Args(
      allowVolumeExpansion: (() { final guardedValue = map['allowVolumeExpansion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedTopologies: (() { final guardedValue = map['allowedTopologies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TopologySelectorTermPatch>(guardedValue, (value) => TopologySelectorTermPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioner: (() { final guardedValue = map['provisioner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reclaimPolicy: (() { final guardedValue = map['reclaimPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeBindingMode: (() { final guardedValue = map['volumeBindingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

