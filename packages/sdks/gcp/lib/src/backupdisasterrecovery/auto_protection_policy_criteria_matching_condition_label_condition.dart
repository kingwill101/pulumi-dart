// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoProtectionPolicyCriteriaMatchingConditionLabelCondition {
  /// The key of the label to match.
  final pulumi.Input<String> key;
  /// The values of the label to match. A resource matches the condition if its label
  /// value is equal to any of the listed values. Currently, only one value is supported.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AutoProtectionPolicyCriteriaMatchingConditionLabelCondition].
  /// [key] The key of the label to match.
  /// [values] The values of the label to match. A resource matches the condition if its label
  const AutoProtectionPolicyCriteriaMatchingConditionLabelCondition({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory AutoProtectionPolicyCriteriaMatchingConditionLabelCondition.fromMap(Map<String, dynamic> map) {
    return AutoProtectionPolicyCriteriaMatchingConditionLabelCondition(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
