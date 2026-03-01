// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_scheduling_context_spec.dart';

/// {@template pulumi_resource_k8s_io_v1alpha2_pod_scheduling_context_args_doc}
/// The set of arguments for PodSchedulingContext.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha2_pod_scheduling_context_args_doc}
class PodSchedulingContextArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// Spec describes where resources for the Pod are needed.
  final pulumi.Input<PodSchedulingContextSpec> spec;

  /// Creates a new [PodSchedulingContextArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec describes where resources for the Pod are needed.
  PodSchedulingContextArgs({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    required pulumi.Output<PodSchedulingContextSpec> spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      spec = pulumi.Input.asInput<PodSchedulingContextSpec>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': pulumi.Input.mapInputValue<PodSchedulingContextSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory PodSchedulingContextArgs.fromMap(Map<String, dynamic> map) {
    return PodSchedulingContextArgs(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: pulumi.Output.create<PodSchedulingContextSpec>(PodSchedulingContextSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

