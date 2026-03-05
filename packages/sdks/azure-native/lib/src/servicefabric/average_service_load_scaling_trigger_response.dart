// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a scaling policy related to an average load of a metric/resource of a service.
class AverageServiceLoadScalingTriggerResponse {
  /// Enumerates the ways that a service can be partitioned.
  /// Expected value is 'AverageServiceLoadTrigger'.
  final pulumi.Input<String> kind;
  /// The lower limit of the load below which a scale in operation should be performed.
  final pulumi.Input<double> lowerLoadThreshold;
  /// The name of the metric for which usage should be tracked.
  final pulumi.Input<String> metricName;
  /// The period in seconds on which a decision is made whether to scale or not. This property should come in ISO 8601 format "hh:mm:ss".
  final pulumi.Input<String> scaleInterval;
  /// The upper limit of the load beyond which a scale out operation should be performed.
  final pulumi.Input<double> upperLoadThreshold;
  /// Flag determines whether only the load of primary replica should be considered for scaling. If set to true, then trigger will only consider the load of primary replicas of stateful service. If set to false, trigger will consider load of all replicas. This parameter cannot be set to true for stateless service.
  final pulumi.Input<bool> useOnlyPrimaryLoad;

  /// Creates a new [AverageServiceLoadScalingTriggerResponse].
  /// [kind] Enumerates the ways that a service can be partitioned.
  /// [lowerLoadThreshold] The lower limit of the load below which a scale in operation should be performed.
  /// [metricName] The name of the metric for which usage should be tracked.
  /// [scaleInterval] The period in seconds on which a decision is made whether to scale or not. This property should come in ISO 8601 format "hh:mm:ss".
  /// [upperLoadThreshold] The upper limit of the load beyond which a scale out operation should be performed.
  /// [useOnlyPrimaryLoad] Flag determines whether only the load of primary replica should be considered for scaling. If set to true, then trigger will only consider the load of primary replicas of stateful service. If set to false, trigger will consider load of all replicas. This parameter cannot be set to true for stateless service.
  AverageServiceLoadScalingTriggerResponse({
    required this.kind,
    required this.lowerLoadThreshold,
    required this.metricName,
    required this.scaleInterval,
    required this.upperLoadThreshold,
    required this.useOnlyPrimaryLoad,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'lowerLoadThreshold': lowerLoadThreshold,
      'metricName': metricName,
      'scaleInterval': scaleInterval,
      'upperLoadThreshold': upperLoadThreshold,
      'useOnlyPrimaryLoad': useOnlyPrimaryLoad,
    };
  }

  factory AverageServiceLoadScalingTriggerResponse.fromMap(Map<String, dynamic> map) {
    return AverageServiceLoadScalingTriggerResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      lowerLoadThreshold: pulumi.Input.fromValue(map['lowerLoadThreshold'] as double),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      scaleInterval: pulumi.Input.fromValue(map['scaleInterval'] as String),
      upperLoadThreshold: pulumi.Input.fromValue(map['upperLoadThreshold'] as double),
      useOnlyPrimaryLoad: pulumi.Input.fromValue(map['useOnlyPrimaryLoad'] as bool),
    );
  }
}

