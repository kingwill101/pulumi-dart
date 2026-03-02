// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRuleConditionsRequestMethodCondition {
  /// A list of one or more HTTP methods. Possible values include `GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS` or `TRACE`. If multiple values are specified, they're evaluated using `OR` logic.
  final pulumi.Input<List<String>> matchValues;
  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final pulumi.Input<bool>? negateCondition;
  /// Possible value `Equal`. Defaults to `Equal`.
  final pulumi.Input<String>? operator;

  /// Creates a new [FrontdoorRuleConditionsRequestMethodCondition].
  /// [matchValues] A list of one or more HTTP methods. Possible values include `GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS` or `TRACE`. If multiple values are specified, they're evaluated using `OR` logic.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] Possible value `Equal`. Defaults to `Equal`.
  FrontdoorRuleConditionsRequestMethodCondition({
    required this.matchValues,
    this.negateCondition,
    this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': matchValues,
      'negateCondition': ?negateCondition,
      'operator': ?operator,
    };
  }

  factory FrontdoorRuleConditionsRequestMethodCondition.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditionsRequestMethodCondition(
      matchValues: ((map['matchValues'] as List).cast<String>()).input(),
      negateCondition: map['negateCondition'] == null ? null : (map['negateCondition']! as bool).input(),
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
    );
  }
}

