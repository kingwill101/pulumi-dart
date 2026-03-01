// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_spec.dart';

/// {@template pulumi_core_v1_pod_args_doc}
/// The set of arguments for Pod.
/// {@endtemplate}
/// {@macro pulumi_core_v1_pod_args_doc}
class PodArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// Specification of the desired behavior of the pod. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<PodSpec>? spec;

  /// Creates a new [PodArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Specification of the desired behavior of the pod. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  PodArgs({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    pulumi.Output<PodSpec>? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      spec = pulumi.Input.asOptionalInput<PodSpec>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<PodSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory PodArgs.fromMap(Map<String, dynamic> map) {
    return PodArgs(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: map['spec'] == null ? null : pulumi.Output.create<PodSpec>(PodSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

