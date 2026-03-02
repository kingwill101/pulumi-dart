// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_version_object_reference_autoscaling_v2beta2.dart';
import 'metric_identifier_autoscaling_v2beta2.dart';
import 'metric_value_status_autoscaling_v2beta2.dart';

/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricStatusAutoscalingV2beta2 {
  /// current contains the current value for the given metric
  final pulumi.Input<MetricValueStatusAutoscalingV2beta2> current;
  final pulumi.Input<CrossVersionObjectReferenceAutoscalingV2beta2> describedObject;
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifierAutoscalingV2beta2> metric;

  /// Creates a new [ObjectMetricStatusAutoscalingV2beta2].
  /// [current] current contains the current value for the given metric
  /// [describedObject] Required.
  /// [metric] metric identifies the target metric by name and selector
  ObjectMetricStatusAutoscalingV2beta2({
    required this.current,
    required this.describedObject,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': pulumi.Input.mapInputValue<MetricValueStatusAutoscalingV2beta2, Map<String, dynamic>>(current, (value) => value.toMap()),
      'describedObject': pulumi.Input.mapInputValue<CrossVersionObjectReferenceAutoscalingV2beta2, Map<String, dynamic>>(describedObject, (value) => value.toMap()),
      'metric': pulumi.Input.mapInputValue<MetricIdentifierAutoscalingV2beta2, Map<String, dynamic>>(metric, (value) => value.toMap()),
    };
  }

  factory ObjectMetricStatusAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return ObjectMetricStatusAutoscalingV2beta2(
      current: (MetricValueStatusAutoscalingV2beta2.fromMap((map['current'] as Map).cast<String, dynamic>())).input(),
      describedObject: (CrossVersionObjectReferenceAutoscalingV2beta2.fromMap((map['describedObject'] as Map).cast<String, dynamic>())).input(),
      metric: (MetricIdentifierAutoscalingV2beta2.fromMap((map['metric'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

