// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A custom alert rule that checks if a value (depends on the custom alert type) is within the given range.
class ThresholdCustomAlertRule {
  /// Status of the custom alert.
  final pulumi.Input<bool> isEnabled;
  /// The maximum threshold.
  final pulumi.Input<int> maxThreshold;
  /// The minimum threshold.
  final pulumi.Input<int> minThreshold;
  /// The type of the custom alert rule.
  /// Expected value is 'ThresholdCustomAlertRule'.
  final pulumi.Input<String> ruleType;

  /// Creates a new [ThresholdCustomAlertRule].
  /// [isEnabled] Status of the custom alert.
  /// [maxThreshold] The maximum threshold.
  /// [minThreshold] The minimum threshold.
  /// [ruleType] The type of the custom alert rule.
  const ThresholdCustomAlertRule({
    required this.isEnabled,
    required this.maxThreshold,
    required this.minThreshold,
    required this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': isEnabled,
      'maxThreshold': maxThreshold,
      'minThreshold': minThreshold,
      'ruleType': ruleType,
    };
  }

  factory ThresholdCustomAlertRule.fromMap(Map<String, dynamic> map) {
    return ThresholdCustomAlertRule(
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      maxThreshold: pulumi.Input.fromValue(map['maxThreshold'] as int),
      minThreshold: pulumi.Input.fromValue(map['minThreshold'] as int),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
    );
  }
}

