// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_version_object_reference_autoscaling_v2beta2.dart';
import 'metric_identifier_autoscaling_v2beta2.dart';
import 'metric_target_autoscaling_v2beta2.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSourceAutoscalingV2beta2 {
  final pulumi.Input<CrossVersionObjectReferenceAutoscalingV2beta2> describedObject;
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifierAutoscalingV2beta2> metric;
  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTargetAutoscalingV2beta2> target;

  /// Creates a new [ObjectMetricSourceAutoscalingV2beta2].
  /// [describedObject] Required.
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  ObjectMetricSourceAutoscalingV2beta2({
    required this.describedObject,
    required this.metric,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'describedObject': pulumi.Input.mapInputValue<CrossVersionObjectReferenceAutoscalingV2beta2, Map<String, dynamic>>(describedObject, (value) => value.toMap()),
      'metric': pulumi.Input.mapInputValue<MetricIdentifierAutoscalingV2beta2, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<MetricTargetAutoscalingV2beta2, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ObjectMetricSourceAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return ObjectMetricSourceAutoscalingV2beta2(
      describedObject: (CrossVersionObjectReferenceAutoscalingV2beta2.fromMap((map['describedObject'] as Map).cast<String, dynamic>())).input(),
      metric: (MetricIdentifierAutoscalingV2beta2.fromMap((map['metric'] as Map).cast<String, dynamic>())).input(),
      target: (MetricTargetAutoscalingV2beta2.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

