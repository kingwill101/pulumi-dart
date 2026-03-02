// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A rule which is evaluated upon event interception. The rule is configured by comparing a specific value from the event model to an expected value. This comparison is done by using one of the supported operators set.
class AutomationTriggeringRule {
  /// The expected value.
  final pulumi.Input<String>? expectedValue;
  /// A valid comparer operator to use. A case-insensitive comparison will be applied for String PropertyType.
  final pulumi.Input<String>? operator;
  /// The JPath of the entity model property that should be checked.
  final pulumi.Input<String>? propertyJPath;
  /// The data type of the compared operands (string, integer, floating point number or a boolean [true/false]]
  final pulumi.Input<String>? propertyType;

  /// Creates a new [AutomationTriggeringRule].
  /// [expectedValue] The expected value.
  /// [operator] A valid comparer operator to use. A case-insensitive comparison will be applied for String PropertyType.
  /// [propertyJPath] The JPath of the entity model property that should be checked.
  /// [propertyType] The data type of the compared operands (string, integer, floating point number or a boolean [true/false]]
  AutomationTriggeringRule({
    this.expectedValue,
    this.operator,
    this.propertyJPath,
    this.propertyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expectedValue': ?expectedValue,
      'operator': ?operator,
      'propertyJPath': ?propertyJPath,
      'propertyType': ?propertyType,
    };
  }

  factory AutomationTriggeringRule.fromMap(Map<String, dynamic> map) {
    return AutomationTriggeringRule(
      expectedValue: map['expectedValue'] == null ? null : (map['expectedValue'] as String).input(),
      operator: map['operator'] == null ? null : (map['operator'] as String).input(),
      propertyJPath: map['propertyJPath'] == null ? null : (map['propertyJPath'] as String).input(),
      propertyType: map['propertyType'] == null ? null : (map['propertyType'] as String).input(),
    );
  }
}

