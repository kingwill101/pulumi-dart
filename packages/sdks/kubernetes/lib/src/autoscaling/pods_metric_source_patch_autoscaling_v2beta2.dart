// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_identifier_patch_autoscaling_v2beta2.dart';
import 'metric_target_patch_autoscaling_v2beta2.dart';

/// PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
class PodsMetricSourcePatchAutoscalingV2beta2 {
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifierPatchAutoscalingV2beta2>? metric;
  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTargetPatchAutoscalingV2beta2>? target;

  /// Creates a new [PodsMetricSourcePatchAutoscalingV2beta2].
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  PodsMetricSourcePatchAutoscalingV2beta2({
    this.metric,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': ?pulumi.Input.mapOptionalInputValue<MetricIdentifierPatchAutoscalingV2beta2, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<MetricTargetPatchAutoscalingV2beta2, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory PodsMetricSourcePatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return PodsMetricSourcePatchAutoscalingV2beta2(
      metric: map['metric'] == null ? null : (MetricIdentifierPatchAutoscalingV2beta2.fromMap((map['metric']! as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (MetricTargetPatchAutoscalingV2beta2.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

