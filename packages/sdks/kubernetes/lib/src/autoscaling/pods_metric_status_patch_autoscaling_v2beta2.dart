// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_identifier_patch_autoscaling_v2beta2.dart';
import 'metric_value_status_patch_autoscaling_v2beta2.dart';

/// PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
class PodsMetricStatusPatchAutoscalingV2beta2 {
  /// current contains the current value for the given metric
  final pulumi.Input<MetricValueStatusPatchAutoscalingV2beta2>? current;
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifierPatchAutoscalingV2beta2>? metric;

  /// Creates a new [PodsMetricStatusPatchAutoscalingV2beta2].
  /// [current] current contains the current value for the given metric
  /// [metric] metric identifies the target metric by name and selector
  const PodsMetricStatusPatchAutoscalingV2beta2({
    this.current,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': ?pulumi.Input.mapOptionalInputValue<MetricValueStatusPatchAutoscalingV2beta2, Map<String, dynamic>>(current, (value) => value.toMap()),
      'metric': ?pulumi.Input.mapOptionalInputValue<MetricIdentifierPatchAutoscalingV2beta2, Map<String, dynamic>>(metric, (value) => value.toMap()),
    };
  }

  factory PodsMetricStatusPatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return PodsMetricStatusPatchAutoscalingV2beta2(
      current: (() { final guardedValue = map['current']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricValueStatusPatchAutoscalingV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricIdentifierPatchAutoscalingV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
