// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A custom alert rule that checks if the number of activities (depends on the custom alert type) in a time window is within the given range.
class TimeWindowCustomAlertRule {
  /// Status of the custom alert.
  final pulumi.Input<bool> isEnabled;
  /// The maximum threshold.
  final pulumi.Input<int> maxThreshold;
  /// The minimum threshold.
  final pulumi.Input<int> minThreshold;
  /// The type of the custom alert rule.
  /// Expected value is 'TimeWindowCustomAlertRule'.
  final pulumi.Input<String> ruleType;
  /// The time window size in iso8601 format.
  final pulumi.Input<String> timeWindowSize;

  /// Creates a new [TimeWindowCustomAlertRule].
  /// [isEnabled] Status of the custom alert.
  /// [maxThreshold] The maximum threshold.
  /// [minThreshold] The minimum threshold.
  /// [ruleType] The type of the custom alert rule.
  /// [timeWindowSize] The time window size in iso8601 format.
  TimeWindowCustomAlertRule({
    required this.isEnabled,
    required this.maxThreshold,
    required this.minThreshold,
    required this.ruleType,
    required this.timeWindowSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': isEnabled,
      'maxThreshold': maxThreshold,
      'minThreshold': minThreshold,
      'ruleType': ruleType,
      'timeWindowSize': timeWindowSize,
    };
  }

  factory TimeWindowCustomAlertRule.fromMap(Map<String, dynamic> map) {
    return TimeWindowCustomAlertRule(
      isEnabled: (map['isEnabled'] as bool).input(),
      maxThreshold: (map['maxThreshold'] as int).input(),
      minThreshold: (map['minThreshold'] as int).input(),
      ruleType: (map['ruleType'] as String).input(),
      timeWindowSize: (map['timeWindowSize'] as String).input(),
    );
  }
}

