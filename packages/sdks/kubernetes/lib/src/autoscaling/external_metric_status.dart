// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_identifier.dart';
import 'metric_value_status.dart';

/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
class ExternalMetricStatus {
  /// current contains the current value for the given metric
  final pulumi.Input<MetricValueStatus> current;
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifier> metric;

  /// Creates a new [ExternalMetricStatus].
  /// [current] current contains the current value for the given metric
  /// [metric] metric identifies the target metric by name and selector
  ExternalMetricStatus({
    required this.current,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': pulumi.Input.mapInputValue<MetricValueStatus, Map<String, dynamic>>(current, (value) => value.toMap()),
      'metric': pulumi.Input.mapInputValue<MetricIdentifier, Map<String, dynamic>>(metric, (value) => value.toMap()),
    };
  }

  factory ExternalMetricStatus.fromMap(Map<String, dynamic> map) {
    return ExternalMetricStatus(
      current: (MetricValueStatus.fromMap((map['current'] as Map).cast<String, dynamic>())).input(),
      metric: (MetricIdentifier.fromMap((map['metric'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

