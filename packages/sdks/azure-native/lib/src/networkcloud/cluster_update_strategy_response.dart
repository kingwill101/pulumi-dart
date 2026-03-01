// ignore_for_file: unused_element, unnecessary_cast


class ClusterUpdateStrategyResponse {
  /// The maximum number of worker nodes that can be offline within the increment of update, e.g., rack-by-rack.
  /// Limited by the maximum number of machines in the increment. Defaults to the whole increment size.
  final double? maxUnavailable;
  /// The mode of operation for runtime protection.
  final String strategyType;
  /// Selection of how the threshold should be evaluated.
  final String thresholdType;
  /// The numeric threshold value.
  final double thresholdValue;
  /// The time to wait between the increments of update defined by the strategy.
  final double? waitTimeMinutes;

  /// Creates a new [ClusterUpdateStrategyResponse].
  /// [maxUnavailable] The maximum number of worker nodes that can be offline within the increment of update, e.g., rack-by-rack.
  /// [strategyType] The mode of operation for runtime protection.
  /// [thresholdType] Selection of how the threshold should be evaluated.
  /// [thresholdValue] The numeric threshold value.
  /// [waitTimeMinutes] The time to wait between the increments of update defined by the strategy.
  ClusterUpdateStrategyResponse({
    this.maxUnavailable,
    required this.strategyType,
    required this.thresholdType,
    required this.thresholdValue,
    this.waitTimeMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUnavailable': ?maxUnavailable,
      'strategyType': strategyType,
      'thresholdType': thresholdType,
      'thresholdValue': thresholdValue,
      'waitTimeMinutes': ?waitTimeMinutes,
    };
  }

  factory ClusterUpdateStrategyResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpdateStrategyResponse(
      maxUnavailable: map['maxUnavailable'] == null ? null : map['maxUnavailable'] as double,
      strategyType: map['strategyType'] as String,
      thresholdType: map['thresholdType'] as String,
      thresholdValue: map['thresholdValue'] as double,
      waitTimeMinutes: map['waitTimeMinutes'] == null ? null : map['waitTimeMinutes'] as double,
    );
  }
}

