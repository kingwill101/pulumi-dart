// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRuleConditionsServerPortCondition {
  /// A list of one or more integer values(e.g. "1") representing the value of the client port to match. Possible values include `80` or `443`. If multiple values are specified, they're evaluated using `OR` logic.
  final pulumi.Input<List<String>> matchValues;
  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final pulumi.Input<bool>? negateCondition;
  /// A Conditional operator. Possible values include `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual` or `RegEx`. Details can be found in the `Condition Operator List` below.
  final pulumi.Input<String> operator;

  /// Creates a new [FrontdoorRuleConditionsServerPortCondition].
  /// [matchValues] A list of one or more integer values(e.g. "1") representing the value of the client port to match. Possible values include `80` or `443`. If multiple values are specified, they're evaluated using `OR` logic.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] A Conditional operator. Possible values include `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual` or `RegEx`. Details can be found in the `Condition Operator List` below.
  FrontdoorRuleConditionsServerPortCondition({
    required this.matchValues,
    this.negateCondition,
    required this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
    };
  }

  factory FrontdoorRuleConditionsServerPortCondition.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditionsServerPortCondition(
      matchValues: ((map['matchValues'] as List).cast<String>()).input(),
      negateCondition: map['negateCondition'] == null ? null : (map['negateCondition'] as bool).input(),
      operator: (map['operator'] as String).input(),
    );
  }
}

