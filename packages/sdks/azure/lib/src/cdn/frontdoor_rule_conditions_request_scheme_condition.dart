// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRuleConditionsRequestSchemeCondition {
  /// The requests protocol to match. Possible values include `HTTP` or `HTTPS`.
  final pulumi.Input<String>? matchValues;
  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final pulumi.Input<bool>? negateCondition;
  /// Possible value `Equal`. Defaults to `Equal`.
  final pulumi.Input<String>? operator;

  /// Creates a new [FrontdoorRuleConditionsRequestSchemeCondition].
  /// [matchValues] The requests protocol to match. Possible values include `HTTP` or `HTTPS`.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] Possible value `Equal`. Defaults to `Equal`.
  FrontdoorRuleConditionsRequestSchemeCondition({
    this.matchValues,
    this.negateCondition,
    this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': ?operator,
    };
  }

  factory FrontdoorRuleConditionsRequestSchemeCondition.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditionsRequestSchemeCondition(
      matchValues: map['matchValues'] == null ? null : (map['matchValues'] as String).input(),
      negateCondition: map['negateCondition'] == null ? null : (map['negateCondition'] as bool).input(),
      operator: map['operator'] == null ? null : (map['operator'] as String).input(),
    );
  }
}

