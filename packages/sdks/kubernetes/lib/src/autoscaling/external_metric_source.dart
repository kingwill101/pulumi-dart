// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_identifier.dart';
import 'metric_target.dart';

/// ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
class ExternalMetricSource {
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifier> metric;
  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTarget> target;

  /// Creates a new [ExternalMetricSource].
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  const ExternalMetricSource({
    required this.metric,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': pulumi.Input.mapInputValue<MetricIdentifier, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<MetricTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ExternalMetricSource.fromMap(Map<String, dynamic> map) {
    return ExternalMetricSource(
      metric: pulumi.Input.fromValue(MetricIdentifier.fromMap((map['metric']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(MetricTarget.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}
