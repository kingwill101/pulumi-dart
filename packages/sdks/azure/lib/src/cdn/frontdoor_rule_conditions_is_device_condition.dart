// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRuleConditionsIsDeviceCondition {
  /// Which device should this rule match on? Possible values `Mobile` or `Desktop`.
  final pulumi.Input<String>? matchValues;
  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final pulumi.Input<bool>? negateCondition;
  /// Possible value `Equal`. Defaults to `Equal`.
  final pulumi.Input<String>? operator;

  /// Creates a new [FrontdoorRuleConditionsIsDeviceCondition].
  /// [matchValues] Which device should this rule match on? Possible values `Mobile` or `Desktop`.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] Possible value `Equal`. Defaults to `Equal`.
  const FrontdoorRuleConditionsIsDeviceCondition({
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

  factory FrontdoorRuleConditionsIsDeviceCondition.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditionsIsDeviceCondition(
      matchValues: (() { final guardedValue = map['matchValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      negateCondition: (() { final guardedValue = map['negateCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
