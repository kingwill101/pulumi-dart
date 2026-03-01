// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'pod_scheduling_context_spec_patch_resource_k8s_io_v1alpha3.dart';

/// {@template pulumi_resource_k8s_io_v1alpha3_pod_scheduling_context_patch_resource_k8s_io_v1alpha3_args_doc}
/// The set of arguments for PodSchedulingContextPatch.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha3_pod_scheduling_context_patch_resource_k8s_io_v1alpha3_args_doc}
class PodSchedulingContextPatchResourceK8sIoV1alpha3Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Spec describes where resources for the Pod are needed.
  final pulumi.Input<PodSchedulingContextSpecPatchResourceK8sIoV1alpha3>? spec;

  /// Creates a new [PodSchedulingContextPatchResourceK8sIoV1alpha3Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec describes where resources for the Pod are needed.
  PodSchedulingContextPatchResourceK8sIoV1alpha3Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMetaPatch>? metadata,
    pulumi.Output<PodSchedulingContextSpecPatchResourceK8sIoV1alpha3>? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      spec = pulumi.Input.asOptionalInput<PodSchedulingContextSpecPatchResourceK8sIoV1alpha3>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<PodSchedulingContextSpecPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory PodSchedulingContextPatchResourceK8sIoV1alpha3Args.fromMap(Map<String, dynamic> map) {
    return PodSchedulingContextPatchResourceK8sIoV1alpha3Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: map['spec'] == null ? null : pulumi.Output.create<PodSchedulingContextSpecPatchResourceK8sIoV1alpha3>(PodSchedulingContextSpecPatchResourceK8sIoV1alpha3.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

