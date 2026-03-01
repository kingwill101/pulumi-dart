// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorRuleConditionsClientPortCondition {
  /// One or more integer values(e.g. "1") representing the value of the client port to match. If multiple values are specified, they're evaluated using `OR` logic.
  final List<String>? matchValues;
  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final bool? negateCondition;
  /// A Conditional operator. Possible values include `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual` or `RegEx`. Details can be found in the `Condition Operator List` below.
  final String operator;

  /// Creates a new [FrontdoorRuleConditionsClientPortCondition].
  /// [matchValues] One or more integer values(e.g. "1") representing the value of the client port to match. If multiple values are specified, they're evaluated using `OR` logic.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] A Conditional operator. Possible values include `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual` or `RegEx`. Details can be found in the `Condition Operator List` below.
  FrontdoorRuleConditionsClientPortCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
    };
  }

  factory FrontdoorRuleConditionsClientPortCondition.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditionsClientPortCondition(
      matchValues: map['matchValues'] == null ? null : (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] as String,
    );
  }
}

