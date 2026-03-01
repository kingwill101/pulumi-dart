// ignore_for_file: unused_element, unnecessary_cast


/// Represents a scaling policy related to an average load of a metric/resource of a service.
class AverageServiceLoadScalingTriggerResponse {
  /// Enumerates the ways that a service can be partitioned.
  /// Expected value is 'AverageServiceLoadTrigger'.
  final String kind;
  /// The lower limit of the load below which a scale in operation should be performed.
  final double lowerLoadThreshold;
  /// The name of the metric for which usage should be tracked.
  final String metricName;
  /// The period in seconds on which a decision is made whether to scale or not. This property should come in ISO 8601 format "hh:mm:ss".
  final String scaleInterval;
  /// The upper limit of the load beyond which a scale out operation should be performed.
  final double upperLoadThreshold;
  /// Flag determines whether only the load of primary replica should be considered for scaling. If set to true, then trigger will only consider the load of primary replicas of stateful service. If set to false, trigger will consider load of all replicas. This parameter cannot be set to true for stateless service.
  final bool useOnlyPrimaryLoad;

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
      kind: map['kind'] as String,
      lowerLoadThreshold: map['lowerLoadThreshold'] as double,
      metricName: map['metricName'] as String,
      scaleInterval: map['scaleInterval'] as String,
      upperLoadThreshold: map['upperLoadThreshold'] as double,
      useOnlyPrimaryLoad: map['useOnlyPrimaryLoad'] as bool,
    );
  }
}

