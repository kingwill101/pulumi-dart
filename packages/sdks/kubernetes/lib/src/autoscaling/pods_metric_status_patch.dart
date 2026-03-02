// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_identifier_patch.dart';
import 'metric_value_status_patch.dart';

/// PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
class PodsMetricStatusPatch {
  /// current contains the current value for the given metric
  final pulumi.Input<MetricValueStatusPatch>? current;
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifierPatch>? metric;

  /// Creates a new [PodsMetricStatusPatch].
  /// [current] current contains the current value for the given metric
  /// [metric] metric identifies the target metric by name and selector
  PodsMetricStatusPatch({
    this.current,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': ?pulumi.Input.mapOptionalInputValue<MetricValueStatusPatch, Map<String, dynamic>>(current, (value) => value.toMap()),
      'metric': ?pulumi.Input.mapOptionalInputValue<MetricIdentifierPatch, Map<String, dynamic>>(metric, (value) => value.toMap()),
    };
  }

  factory PodsMetricStatusPatch.fromMap(Map<String, dynamic> map) {
    return PodsMetricStatusPatch(
      current: map['current'] == null ? null : (MetricValueStatusPatch.fromMap((map['current'] as Map).cast<String, dynamic>())).input(),
      metric: map['metric'] == null ? null : (MetricIdentifierPatch.fromMap((map['metric'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

