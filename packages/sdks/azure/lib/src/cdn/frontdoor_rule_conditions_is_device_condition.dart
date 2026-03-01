// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorRuleConditionsIsDeviceCondition {
  /// Which device should this rule match on? Possible values `Mobile` or `Desktop`.
  final String? matchValues;
  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final bool? negateCondition;
  /// Possible value `Equal`. Defaults to `Equal`.
  final String? operator;

  /// Creates a new [FrontdoorRuleConditionsIsDeviceCondition].
  /// [matchValues] Which device should this rule match on? Possible values `Mobile` or `Desktop`.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] Possible value `Equal`. Defaults to `Equal`.
  FrontdoorRuleConditionsIsDeviceCondition({
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
      matchValues: map['matchValues'] == null ? null : map['matchValues'] as String,
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] == null ? null : map['operator'] as String,
    );
  }
}

