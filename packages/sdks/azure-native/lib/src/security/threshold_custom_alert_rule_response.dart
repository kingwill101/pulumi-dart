// ignore_for_file: unused_element, unnecessary_cast


/// A custom alert rule that checks if a value (depends on the custom alert type) is within the given range.
class ThresholdCustomAlertRuleResponse {
  /// The description of the custom alert.
  final String description;
  /// The display name of the custom alert.
  final String displayName;
  /// Status of the custom alert.
  final bool isEnabled;
  /// The maximum threshold.
  final int maxThreshold;
  /// The minimum threshold.
  final int minThreshold;
  /// The type of the custom alert rule.
  /// Expected value is 'ThresholdCustomAlertRule'.
  final String ruleType;

  /// Creates a new [ThresholdCustomAlertRuleResponse].
  /// [description] The description of the custom alert.
  /// [displayName] The display name of the custom alert.
  /// [isEnabled] Status of the custom alert.
  /// [maxThreshold] The maximum threshold.
  /// [minThreshold] The minimum threshold.
  /// [ruleType] The type of the custom alert rule.
  ThresholdCustomAlertRuleResponse({
    required this.description,
    required this.displayName,
    required this.isEnabled,
    required this.maxThreshold,
    required this.minThreshold,
    required this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'isEnabled': isEnabled,
      'maxThreshold': maxThreshold,
      'minThreshold': minThreshold,
      'ruleType': ruleType,
    };
  }

  factory ThresholdCustomAlertRuleResponse.fromMap(Map<String, dynamic> map) {
    return ThresholdCustomAlertRuleResponse(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      isEnabled: map['isEnabled'] as bool,
      maxThreshold: map['maxThreshold'] as int,
      minThreshold: map['minThreshold'] as int,
      ruleType: map['ruleType'] as String,
    );
  }
}

