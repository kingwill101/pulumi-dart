// ignore_for_file: unused_element, unnecessary_cast

import 'cross_version_object_reference_patch_autoscaling_v2beta2.dart';
import 'metric_identifier_patch_autoscaling_v2beta2.dart';
import 'metric_value_status_patch_autoscaling_v2beta2.dart';

/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricStatusPatchAutoscalingV2beta2 {
  /// current contains the current value for the given metric
  final MetricValueStatusPatchAutoscalingV2beta2? current;
  final CrossVersionObjectReferencePatchAutoscalingV2beta2? describedObject;
  /// metric identifies the target metric by name and selector
  final MetricIdentifierPatchAutoscalingV2beta2? metric;

  /// Creates a new [ObjectMetricStatusPatchAutoscalingV2beta2].
  /// [current] current contains the current value for the given metric
  /// [describedObject] Optional.
  /// [metric] metric identifies the target metric by name and selector
  ObjectMetricStatusPatchAutoscalingV2beta2({
    this.current,
    this.describedObject,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': ?current == null ? null : current!.toMap(),
      'describedObject': ?describedObject == null ? null : describedObject!.toMap(),
      'metric': ?metric == null ? null : metric!.toMap(),
    };
  }

  factory ObjectMetricStatusPatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return ObjectMetricStatusPatchAutoscalingV2beta2(
      current: map['current'] == null ? null : MetricValueStatusPatchAutoscalingV2beta2.fromMap((map['current'] as Map).cast<String, dynamic>()),
      describedObject: map['describedObject'] == null ? null : CrossVersionObjectReferencePatchAutoscalingV2beta2.fromMap((map['describedObject'] as Map).cast<String, dynamic>()),
      metric: map['metric'] == null ? null : MetricIdentifierPatchAutoscalingV2beta2.fromMap((map['metric'] as Map).cast<String, dynamic>()),
    );
  }
}

