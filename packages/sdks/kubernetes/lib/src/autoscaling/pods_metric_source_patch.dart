// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_identifier_patch.dart';
import 'metric_target_patch.dart';

/// PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
class PodsMetricSourcePatch {
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifierPatch>? metric;
  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTargetPatch>? target;

  /// Creates a new [PodsMetricSourcePatch].
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  const PodsMetricSourcePatch({
    this.metric,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': ?pulumi.Input.mapOptionalInputValue<MetricIdentifierPatch, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<MetricTargetPatch, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory PodsMetricSourcePatch.fromMap(Map<String, dynamic> map) {
    return PodsMetricSourcePatch(
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricIdentifierPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricTargetPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

