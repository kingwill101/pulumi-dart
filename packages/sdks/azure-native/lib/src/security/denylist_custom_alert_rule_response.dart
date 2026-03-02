// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A custom alert rule that checks if a value (depends on the custom alert type) is denied.
class DenylistCustomAlertRuleResponse {
  /// The values to deny. The format of the values depends on the rule type.
  final pulumi.Input<List<String>> denylistValues;
  /// The description of the custom alert.
  final pulumi.Input<String> description;
  /// The display name of the custom alert.
  final pulumi.Input<String> displayName;
  /// Status of the custom alert.
  final pulumi.Input<bool> isEnabled;
  /// The type of the custom alert rule.
  /// Expected value is 'DenylistCustomAlertRule'.
  final pulumi.Input<String> ruleType;
  /// The value type of the items in the list.
  final pulumi.Input<String> valueType;

  /// Creates a new [DenylistCustomAlertRuleResponse].
  /// [denylistValues] The values to deny. The format of the values depends on the rule type.
  /// [description] The description of the custom alert.
  /// [displayName] The display name of the custom alert.
  /// [isEnabled] Status of the custom alert.
  /// [ruleType] The type of the custom alert rule.
  /// [valueType] The value type of the items in the list.
  DenylistCustomAlertRuleResponse({
    required this.denylistValues,
    required this.description,
    required this.displayName,
    required this.isEnabled,
    required this.ruleType,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denylistValues': denylistValues,
      'description': description,
      'displayName': displayName,
      'isEnabled': isEnabled,
      'ruleType': ruleType,
      'valueType': valueType,
    };
  }

  factory DenylistCustomAlertRuleResponse.fromMap(Map<String, dynamic> map) {
    return DenylistCustomAlertRuleResponse(
      denylistValues: ((map['denylistValues'] as List).cast<String>()).input(),
      description: (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      isEnabled: (map['isEnabled'] as bool).input(),
      ruleType: (map['ruleType'] as String).input(),
      valueType: (map['valueType'] as String).input(),
    );
  }
}

