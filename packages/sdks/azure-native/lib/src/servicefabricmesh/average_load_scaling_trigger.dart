// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scaling_resource_metric.dart';

/// Describes the average load trigger used for auto scaling.
class AverageLoadScalingTrigger {
  /// Enumerates the triggers for auto scaling.
  /// Expected value is 'AverageLoad'.
  final pulumi.Input<String> kind;
  /// Lower load threshold (if average load is below this threshold, service will scale down).
  final pulumi.Input<double> lowerLoadThreshold;
  /// Description of the metric that is used for scaling.
  final pulumi.Input<AutoScalingResourceMetric> metric;
  /// Scale interval that indicates how often will this trigger be checked.
  final pulumi.Input<int> scaleIntervalInSeconds;
  /// Upper load threshold (if average load is above this threshold, service will scale up).
  final pulumi.Input<double> upperLoadThreshold;

  /// Creates a new [AverageLoadScalingTrigger].
  /// [kind] Enumerates the triggers for auto scaling.
  /// [lowerLoadThreshold] Lower load threshold (if average load is below this threshold, service will scale down).
  /// [metric] Description of the metric that is used for scaling.
  /// [scaleIntervalInSeconds] Scale interval that indicates how often will this trigger be checked.
  /// [upperLoadThreshold] Upper load threshold (if average load is above this threshold, service will scale up).
  AverageLoadScalingTrigger({
    required this.kind,
    required this.lowerLoadThreshold,
    required this.metric,
    required this.scaleIntervalInSeconds,
    required this.upperLoadThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'lowerLoadThreshold': lowerLoadThreshold,
      'metric': pulumi.Input.mapInputValue<AutoScalingResourceMetric, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'scaleIntervalInSeconds': scaleIntervalInSeconds,
      'upperLoadThreshold': upperLoadThreshold,
    };
  }

  factory AverageLoadScalingTrigger.fromMap(Map<String, dynamic> map) {
    return AverageLoadScalingTrigger(
      kind: (map['kind'] as String).input(),
      lowerLoadThreshold: (map['lowerLoadThreshold'] as double).input(),
      metric: (AutoScalingResourceMetric.fromMap((map['metric'] as Map).cast<String, dynamic>())).input(),
      scaleIntervalInSeconds: (map['scaleIntervalInSeconds'] as int).input(),
      upperLoadThreshold: (map['upperLoadThreshold'] as double).input(),
    );
  }
}

