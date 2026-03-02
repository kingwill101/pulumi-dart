// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'horizontal_pod_autoscaler_spec_patch_autoscaling_v2beta2.dart';

/// {@template pulumi_autoscaling_v2beta2_horizontal_pod_autoscaler_patch_autoscaling_v2beta2_args_doc}
/// The set of arguments for HorizontalPodAutoscalerPatch.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_v2beta2_horizontal_pod_autoscaler_patch_autoscaling_v2beta2_args_doc}
class HorizontalPodAutoscalerPatchAutoscalingV2beta2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// spec is the specification for the behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final pulumi.Input<HorizontalPodAutoscalerSpecPatchAutoscalingV2beta2>? spec;

  /// Creates a new [HorizontalPodAutoscalerPatchAutoscalingV2beta2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] spec is the specification for the behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  HorizontalPodAutoscalerPatchAutoscalingV2beta2Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<HorizontalPodAutoscalerSpecPatchAutoscalingV2beta2, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory HorizontalPodAutoscalerPatchAutoscalingV2beta2Args.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerPatchAutoscalingV2beta2Args(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      spec: map['spec'] == null ? null : (HorizontalPodAutoscalerSpecPatchAutoscalingV2beta2.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

