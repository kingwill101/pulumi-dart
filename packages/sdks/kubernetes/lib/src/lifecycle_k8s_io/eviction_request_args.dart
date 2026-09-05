// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'eviction_request_spec.dart';

/// {@template pulumi_lifecycle_k8s_io_v1alpha1_eviction_request_args_doc}
/// The set of arguments for EvictionRequest.
/// {@endtemplate}
/// {@macro pulumi_lifecycle_k8s_io_v1alpha1_eviction_request_args_doc}
class EvictionRequestArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final pulumi.Input<ObjectMeta?>? metadata;
  /// spec defines the eviction request specification. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<EvictionRequestSpec> spec;

  /// Creates a new [EvictionRequestArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [spec] spec defines the eviction request specification. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  const EvictionRequestArgs({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': pulumi.Input.mapInputValue<EvictionRequestSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory EvictionRequestArgs.fromMap(Map<String, dynamic> map) {
    return EvictionRequestArgs(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: pulumi.Input.fromValue(EvictionRequestSpec.fromMap((map['spec']! as Map).cast<String, dynamic>())),
    );
  }
}
