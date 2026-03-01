// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/topology_selector_term.dart';
import '../meta/object_meta.dart';

/// {@template pulumi_storage_k8s_io_v1_storage_class_args_doc}
/// The set of arguments for StorageClass.
/// {@endtemplate}
/// {@macro pulumi_storage_k8s_io_v1_storage_class_args_doc}
class StorageClassArgs {
  /// allowVolumeExpansion shows whether the storage class allow volume expand.
  final pulumi.Input<bool>? allowVolumeExpansion;
  /// allowedTopologies restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  final pulumi.Input<List<TopologySelectorTerm>>? allowedTopologies;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// mountOptions controls the mountOptions for dynamically provisioned PersistentVolumes of this storage class. e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  final pulumi.Input<List<String>>? mountOptions;
  /// parameters holds the parameters for the provisioner that should create volumes of this storage class.
  final pulumi.Input<Map<String, String>>? parameters;
  /// provisioner indicates the type of the provisioner.
  final pulumi.Input<String> provisioner;
  /// reclaimPolicy controls the reclaimPolicy for dynamically provisioned PersistentVolumes of this storage class. Defaults to Delete.
  final pulumi.Input<String>? reclaimPolicy;
  /// volumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  final pulumi.Input<String>? volumeBindingMode;

  /// Creates a new [StorageClassArgs].
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
  StorageClassArgs({
    pulumi.Output<bool>? allowVolumeExpansion,
    pulumi.Output<List<TopologySelectorTerm>>? allowedTopologies,
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    pulumi.Output<List<String>>? mountOptions,
    pulumi.Output<Map<String, String>>? parameters,
    required pulumi.Output<String> provisioner,
    pulumi.Output<String>? reclaimPolicy,
    pulumi.Output<String>? volumeBindingMode,
  }) :
      allowVolumeExpansion = pulumi.Input.asOptionalInput<bool>(allowVolumeExpansion),
      allowedTopologies = pulumi.Input.asOptionalInput<List<TopologySelectorTerm>>(allowedTopologies),
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      mountOptions = pulumi.Input.asOptionalInput<List<String>>(mountOptions),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      provisioner = pulumi.Input.asInput<String>(provisioner),
      reclaimPolicy = pulumi.Input.asOptionalInput<String>(reclaimPolicy),
      volumeBindingMode = pulumi.Input.asOptionalInput<String>(volumeBindingMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowVolumeExpansion': ?allowVolumeExpansion,
      'allowedTopologies': ?pulumi.Input.mapOptionalInputValue<List<TopologySelectorTerm>, List<Map<String, dynamic>>>(allowedTopologies, (value) => pulumi.Input.encodeList<TopologySelectorTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'mountOptions': ?mountOptions,
      'parameters': ?parameters,
      'provisioner': provisioner,
      'reclaimPolicy': ?reclaimPolicy,
      'volumeBindingMode': ?volumeBindingMode,
    };
  }

  factory StorageClassArgs.fromMap(Map<String, dynamic> map) {
    return StorageClassArgs(
      allowVolumeExpansion: map['allowVolumeExpansion'] == null ? null : pulumi.Output.create<bool>(map['allowVolumeExpansion'] as bool),
      allowedTopologies: map['allowedTopologies'] == null ? null : pulumi.Output.create<List<TopologySelectorTerm>>(pulumi.Input.decodeList<TopologySelectorTerm>(map['allowedTopologies'], (value) => TopologySelectorTerm.fromMap((value as Map).cast<String, dynamic>()))),
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      mountOptions: map['mountOptions'] == null ? null : pulumi.Output.create<List<String>>((map['mountOptions'] as List).cast<String>()),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      provisioner: pulumi.Output.create<String>(map['provisioner'] as String),
      reclaimPolicy: map['reclaimPolicy'] == null ? null : pulumi.Output.create<String>(map['reclaimPolicy'] as String),
      volumeBindingMode: map['volumeBindingMode'] == null ? null : pulumi.Output.create<String>(map['volumeBindingMode'] as String),
    );
  }
}

