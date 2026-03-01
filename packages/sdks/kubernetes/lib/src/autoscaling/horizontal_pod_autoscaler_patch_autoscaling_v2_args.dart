// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'horizontal_pod_autoscaler_spec_patch_autoscaling_v2.dart';

/// {@template pulumi_autoscaling_v2_horizontal_pod_autoscaler_patch_autoscaling_v2_args_doc}
/// The set of arguments for HorizontalPodAutoscalerPatch.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_v2_horizontal_pod_autoscaler_patch_autoscaling_v2_args_doc}
class HorizontalPodAutoscalerPatchAutoscalingV2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// spec is the specification for the behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final pulumi.Input<HorizontalPodAutoscalerSpecPatchAutoscalingV2>? spec;

  /// Creates a new [HorizontalPodAutoscalerPatchAutoscalingV2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] spec is the specification for the behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  HorizontalPodAutoscalerPatchAutoscalingV2Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMetaPatch>? metadata,
    pulumi.Output<HorizontalPodAutoscalerSpecPatchAutoscalingV2>? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      spec = pulumi.Input.asOptionalInput<HorizontalPodAutoscalerSpecPatchAutoscalingV2>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<HorizontalPodAutoscalerSpecPatchAutoscalingV2, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory HorizontalPodAutoscalerPatchAutoscalingV2Args.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerPatchAutoscalingV2Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: map['spec'] == null ? null : pulumi.Output.create<HorizontalPodAutoscalerSpecPatchAutoscalingV2>(HorizontalPodAutoscalerSpecPatchAutoscalingV2.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

