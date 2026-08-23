// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_identifier_autoscaling_v2beta2.dart';
import 'metric_target_autoscaling_v2beta2.dart';

/// ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
class ExternalMetricSourceAutoscalingV2beta2 {
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifierAutoscalingV2beta2> metric;
  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTargetAutoscalingV2beta2> target;

  /// Creates a new [ExternalMetricSourceAutoscalingV2beta2].
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  const ExternalMetricSourceAutoscalingV2beta2({
    required this.metric,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': pulumi.Input.mapInputValue<MetricIdentifierAutoscalingV2beta2, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<MetricTargetAutoscalingV2beta2, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ExternalMetricSourceAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return ExternalMetricSourceAutoscalingV2beta2(
      metric: pulumi.Input.fromValue(MetricIdentifierAutoscalingV2beta2.fromMap((map['metric']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(MetricTargetAutoscalingV2beta2.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}
