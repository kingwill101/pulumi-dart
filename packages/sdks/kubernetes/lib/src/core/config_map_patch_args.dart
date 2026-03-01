// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';

/// {@template pulumi_core_v1_config_map_patch_args_doc}
/// The set of arguments for ConfigMapPatch.
/// {@endtemplate}
/// {@macro pulumi_core_v1_config_map_patch_args_doc}
class ConfigMapPatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// BinaryData contains the binary data. Each key must consist of alphanumeric characters, '-', '_' or '.'. BinaryData can contain byte sequences that are not in the UTF-8 range. The keys stored in BinaryData must not overlap with the ones in the Data field, this is enforced during validation process. Using this field will require 1.10+ apiserver and kubelet.
  final pulumi.Input<Map<String, String>>? binaryData;
  /// Data contains the configuration data. Each key must consist of alphanumeric characters, '-', '_' or '.'. Values with non-UTF-8 byte sequences must use the BinaryData field. The keys stored in Data must not overlap with the keys in the BinaryData field, this is enforced during validation process.
  final pulumi.Input<Map<String, String>>? data;
  /// Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
  final pulumi.Input<bool>? immutable;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;

  /// Creates a new [ConfigMapPatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [binaryData] BinaryData contains the binary data. Each key must consist of alphanumeric characters, '-', '_' or '.'. BinaryData can contain byte sequences that are not in the UTF-8 range. The keys stored in BinaryData must not overlap with the ones in the Data field, this is enforced during validation process. Using this field will require 1.10+ apiserver and kubelet.
  /// [data] Data contains the configuration data. Each key must consist of alphanumeric characters, '-', '_' or '.'. Values with non-UTF-8 byte sequences must use the BinaryData field. The keys stored in Data must not overlap with the keys in the BinaryData field, this is enforced during validation process.
  /// [immutable] Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  ConfigMapPatchArgs({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<Map<String, String>>? binaryData,
    pulumi.Output<Map<String, String>>? data,
    pulumi.Output<bool>? immutable,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMetaPatch>? metadata,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      binaryData = pulumi.Input.asOptionalInput<Map<String, String>>(binaryData),
      data = pulumi.Input.asOptionalInput<Map<String, String>>(data),
      immutable = pulumi.Input.asOptionalInput<bool>(immutable),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'binaryData': ?binaryData,
      'data': ?data,
      'immutable': ?immutable,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory ConfigMapPatchArgs.fromMap(Map<String, dynamic> map) {
    return ConfigMapPatchArgs(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      binaryData: map['binaryData'] == null ? null : pulumi.Output.create<Map<String, String>>((map['binaryData'] as Map).cast<String, String>()),
      data: map['data'] == null ? null : pulumi.Output.create<Map<String, String>>((map['data'] as Map).cast<String, String>()),
      immutable: map['immutable'] == null ? null : pulumi.Output.create<bool>(map['immutable'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
    );
  }
}

