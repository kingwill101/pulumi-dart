// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A custom alert rule that checks if the number of activities (depends on the custom alert type) in a time window is within the given range.
class TimeWindowCustomAlertRuleResponse {
  /// The description of the custom alert.
  final pulumi.Input<String> description;
  /// The display name of the custom alert.
  final pulumi.Input<String> displayName;
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

  /// Creates a new [TimeWindowCustomAlertRuleResponse].
  /// [description] The description of the custom alert.
  /// [displayName] The display name of the custom alert.
  /// [isEnabled] Status of the custom alert.
  /// [maxThreshold] The maximum threshold.
  /// [minThreshold] The minimum threshold.
  /// [ruleType] The type of the custom alert rule.
  /// [timeWindowSize] The time window size in iso8601 format.
  const TimeWindowCustomAlertRuleResponse({
    required this.description,
    required this.displayName,
    required this.isEnabled,
    required this.maxThreshold,
    required this.minThreshold,
    required this.ruleType,
    required this.timeWindowSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'isEnabled': isEnabled,
      'maxThreshold': maxThreshold,
      'minThreshold': minThreshold,
      'ruleType': ruleType,
      'timeWindowSize': timeWindowSize,
    };
  }

  factory TimeWindowCustomAlertRuleResponse.fromMap(Map<String, dynamic> map) {
    return TimeWindowCustomAlertRuleResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      maxThreshold: pulumi.Input.fromValue(map['maxThreshold'] as int),
      minThreshold: pulumi.Input.fromValue(map['minThreshold'] as int),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
      timeWindowSize: pulumi.Input.fromValue(map['timeWindowSize'] as String),
    );
  }
}

