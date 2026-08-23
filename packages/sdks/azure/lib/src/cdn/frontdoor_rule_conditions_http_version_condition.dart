// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRuleConditionsHttpVersionCondition {
  /// What HTTP version should this condition match? Possible values `2.0`, `1.1`, `1.0` or `0.9`.
  final pulumi.Input<List<String>> matchValues;
  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final pulumi.Input<bool>? negateCondition;
  /// Possible value `Equal`. Defaults to `Equal`.
  final pulumi.Input<String>? operator;

  /// Creates a new [FrontdoorRuleConditionsHttpVersionCondition].
  /// [matchValues] What HTTP version should this condition match? Possible values `2.0`, `1.1`, `1.0` or `0.9`.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] Possible value `Equal`. Defaults to `Equal`.
  const FrontdoorRuleConditionsHttpVersionCondition({
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

  factory FrontdoorRuleConditionsHttpVersionCondition.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditionsHttpVersionCondition(
      matchValues: pulumi.Input.fromValue((map['matchValues'] as List).cast<String>()),
      negateCondition: (() { final guardedValue = map['negateCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
