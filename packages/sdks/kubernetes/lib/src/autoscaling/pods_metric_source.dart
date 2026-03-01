// ignore_for_file: unused_element, unnecessary_cast

import 'metric_identifier.dart';
import 'metric_target.dart';

/// PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
class PodsMetricSource {
  /// metric identifies the target metric by name and selector
  final MetricIdentifier metric;
  /// target specifies the target value for the given metric
  final MetricTarget target;

  /// Creates a new [PodsMetricSource].
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  PodsMetricSource({
    required this.metric,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric.toMap(),
      'target': target.toMap(),
    };
  }

  factory PodsMetricSource.fromMap(Map<String, dynamic> map) {
    return PodsMetricSource(
      metric: MetricIdentifier.fromMap((map['metric'] as Map).cast<String, dynamic>()),
      target: MetricTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

