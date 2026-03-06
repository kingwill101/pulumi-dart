// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A custom alert rule that checks if a value (depends on the custom alert type) is allowed.
class AllowlistCustomAlertRule {
  /// The values to allow. The format of the values depends on the rule type.
  final pulumi.Input<List<String>> allowlistValues;
  /// Status of the custom alert.
  final pulumi.Input<bool> isEnabled;
  /// The type of the custom alert rule.
  /// Expected value is 'AllowlistCustomAlertRule'.
  final pulumi.Input<String> ruleType;

  /// Creates a new [AllowlistCustomAlertRule].
  /// [allowlistValues] The values to allow. The format of the values depends on the rule type.
  /// [isEnabled] Status of the custom alert.
  /// [ruleType] The type of the custom alert rule.
  const AllowlistCustomAlertRule({
    required this.allowlistValues,
    required this.isEnabled,
    required this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlistValues': allowlistValues,
      'isEnabled': isEnabled,
      'ruleType': ruleType,
    };
  }

  factory AllowlistCustomAlertRule.fromMap(Map<String, dynamic> map) {
    return AllowlistCustomAlertRule(
      allowlistValues: pulumi.Input.fromValue((map['allowlistValues'] as List).cast<String>()),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
    );
  }
}

