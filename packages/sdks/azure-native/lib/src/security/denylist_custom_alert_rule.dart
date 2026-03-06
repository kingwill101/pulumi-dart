// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A custom alert rule that checks if a value (depends on the custom alert type) is denied.
class DenylistCustomAlertRule {
  /// The values to deny. The format of the values depends on the rule type.
  final pulumi.Input<List<String>> denylistValues;
  /// Status of the custom alert.
  final pulumi.Input<bool> isEnabled;
  /// The type of the custom alert rule.
  /// Expected value is 'DenylistCustomAlertRule'.
  final pulumi.Input<String> ruleType;

  /// Creates a new [DenylistCustomAlertRule].
  /// [denylistValues] The values to deny. The format of the values depends on the rule type.
  /// [isEnabled] Status of the custom alert.
  /// [ruleType] The type of the custom alert rule.
  const DenylistCustomAlertRule({
    required this.denylistValues,
    required this.isEnabled,
    required this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denylistValues': denylistValues,
      'isEnabled': isEnabled,
      'ruleType': ruleType,
    };
  }

  factory DenylistCustomAlertRule.fromMap(Map<String, dynamic> map) {
    return DenylistCustomAlertRule(
      denylistValues: pulumi.Input.fromValue((map['denylistValues'] as List).cast<String>()),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
    );
  }
}

