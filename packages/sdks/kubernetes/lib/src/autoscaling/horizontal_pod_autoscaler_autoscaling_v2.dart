// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'horizontal_pod_autoscaler_spec_autoscaling_v2.dart';
import 'horizontal_pod_autoscaler_status_autoscaling_v2.dart';

/// HorizontalPodAutoscaler is the configuration for a horizontal pod autoscaler, which automatically manages the replica count of any resource implementing the scale subresource based on the metrics specified.
class HorizontalPodAutoscalerAutoscalingV2 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// spec is the specification for the behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final pulumi.Input<HorizontalPodAutoscalerSpecAutoscalingV2>? spec;
  /// status is the current information about the autoscaler.
  final pulumi.Input<HorizontalPodAutoscalerStatusAutoscalingV2>? status;

  /// Creates a new [HorizontalPodAutoscalerAutoscalingV2].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] spec is the specification for the behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  /// [status] status is the current information about the autoscaler.
  HorizontalPodAutoscalerAutoscalingV2({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<HorizontalPodAutoscalerSpecAutoscalingV2, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<HorizontalPodAutoscalerStatusAutoscalingV2, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory HorizontalPodAutoscalerAutoscalingV2.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerAutoscalingV2(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      spec: map['spec'] == null ? null : (HorizontalPodAutoscalerSpecAutoscalingV2.fromMap((map['spec']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (HorizontalPodAutoscalerStatusAutoscalingV2.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

