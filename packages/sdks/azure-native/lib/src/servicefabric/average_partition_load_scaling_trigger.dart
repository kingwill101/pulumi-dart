// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a scaling trigger related to an average load of a metric/resource of a partition.
class AveragePartitionLoadScalingTrigger {
  /// Enumerates the ways that a service can be partitioned.
  /// Expected value is 'AveragePartitionLoadTrigger'.
  final pulumi.Input<String> kind;
  /// The lower limit of the load below which a scale in operation should be performed.
  final pulumi.Input<double> lowerLoadThreshold;
  /// The name of the metric for which usage should be tracked.
  final pulumi.Input<String> metricName;
  /// The period in seconds on which a decision is made whether to scale or not. This property should come in ISO 8601 format "hh:mm:ss".
  final pulumi.Input<String> scaleInterval;
  /// The upper limit of the load beyond which a scale out operation should be performed.
  final pulumi.Input<double> upperLoadThreshold;

  /// Creates a new [AveragePartitionLoadScalingTrigger].
  /// [kind] Enumerates the ways that a service can be partitioned.
  /// [lowerLoadThreshold] The lower limit of the load below which a scale in operation should be performed.
  /// [metricName] The name of the metric for which usage should be tracked.
  /// [scaleInterval] The period in seconds on which a decision is made whether to scale or not. This property should come in ISO 8601 format "hh:mm:ss".
  /// [upperLoadThreshold] The upper limit of the load beyond which a scale out operation should be performed.
  AveragePartitionLoadScalingTrigger({
    required this.kind,
    required this.lowerLoadThreshold,
    required this.metricName,
    required this.scaleInterval,
    required this.upperLoadThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'lowerLoadThreshold': lowerLoadThreshold,
      'metricName': metricName,
      'scaleInterval': scaleInterval,
      'upperLoadThreshold': upperLoadThreshold,
    };
  }

  factory AveragePartitionLoadScalingTrigger.fromMap(Map<String, dynamic> map) {
    return AveragePartitionLoadScalingTrigger(
      kind: (map['kind'] as String).input(),
      lowerLoadThreshold: (map['lowerLoadThreshold'] as double).input(),
      metricName: (map['metricName'] as String).input(),
      scaleInterval: (map['scaleInterval'] as String).input(),
      upperLoadThreshold: (map['upperLoadThreshold'] as double).input(),
    );
  }
}

