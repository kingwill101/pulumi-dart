// ignore_for_file: unused_element, unnecessary_cast

import 'metric_identifier_patch.dart';
import 'metric_target_patch.dart';

/// PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
class PodsMetricSourcePatch {
  /// metric identifies the target metric by name and selector
  final MetricIdentifierPatch? metric;
  /// target specifies the target value for the given metric
  final MetricTargetPatch? target;

  /// Creates a new [PodsMetricSourcePatch].
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  PodsMetricSourcePatch({
    this.metric,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': ?metric == null ? null : metric!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory PodsMetricSourcePatch.fromMap(Map<String, dynamic> map) {
    return PodsMetricSourcePatch(
      metric: map['metric'] == null ? null : MetricIdentifierPatch.fromMap((map['metric'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : MetricTargetPatch.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

