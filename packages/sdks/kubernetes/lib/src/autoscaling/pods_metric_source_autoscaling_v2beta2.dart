// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_identifier_autoscaling_v2beta2.dart';
import 'metric_target_autoscaling_v2beta2.dart';

/// PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
class PodsMetricSourceAutoscalingV2beta2 {
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifierAutoscalingV2beta2> metric;
  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTargetAutoscalingV2beta2> target;

  /// Creates a new [PodsMetricSourceAutoscalingV2beta2].
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  const PodsMetricSourceAutoscalingV2beta2({
    required this.metric,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': pulumi.Input.mapInputValue<MetricIdentifierAutoscalingV2beta2, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<MetricTargetAutoscalingV2beta2, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory PodsMetricSourceAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return PodsMetricSourceAutoscalingV2beta2(
      metric: pulumi.Input.fromValue(MetricIdentifierAutoscalingV2beta2.fromMap((map['metric']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(MetricTargetAutoscalingV2beta2.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}

