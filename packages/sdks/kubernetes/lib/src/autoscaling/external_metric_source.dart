// ignore_for_file: unused_element, unnecessary_cast

import 'metric_identifier.dart';
import 'metric_target.dart';

/// ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
class ExternalMetricSource {
  /// metric identifies the target metric by name and selector
  final MetricIdentifier metric;
  /// target specifies the target value for the given metric
  final MetricTarget target;

  /// Creates a new [ExternalMetricSource].
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  ExternalMetricSource({
    required this.metric,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric.toMap(),
      'target': target.toMap(),
    };
  }

  factory ExternalMetricSource.fromMap(Map<String, dynamic> map) {
    return ExternalMetricSource(
      metric: MetricIdentifier.fromMap((map['metric'] as Map).cast<String, dynamic>()),
      target: MetricTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

