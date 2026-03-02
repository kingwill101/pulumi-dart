// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRuleConditionsPostArgsCondition {
  /// One or more string or integer values(e.g. "1") representing the value of the `POST` argument to match. If multiple values are specified, they're evaluated using `OR` logic.
  final pulumi.Input<List<String>>? matchValues;
  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final pulumi.Input<bool>? negateCondition;
  /// A Conditional operator. Possible values include `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual` or `RegEx`. Details can be found in the `Condition Operator List` below.
  final pulumi.Input<String> operator;
  /// A string value representing the name of the `POST` argument.
  final pulumi.Input<String> postArgsName;
  /// A Conditional operator. Possible values include `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode` or `UrlEncode`. Details can be found in the `Condition Transform List` below.
  final pulumi.Input<List<String>>? transforms;

  /// Creates a new [FrontdoorRuleConditionsPostArgsCondition].
  /// [matchValues] One or more string or integer values(e.g. "1") representing the value of the `POST` argument to match. If multiple values are specified, they're evaluated using `OR` logic.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] A Conditional operator. Possible values include `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual` or `RegEx`. Details can be found in the `Condition Operator List` below.
  /// [postArgsName] A string value representing the name of the `POST` argument.
  /// [transforms] A Conditional operator. Possible values include `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode` or `UrlEncode`. Details can be found in the `Condition Transform List` below.
  FrontdoorRuleConditionsPostArgsCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    required this.postArgsName,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'postArgsName': postArgsName,
      'transforms': ?transforms,
    };
  }

  factory FrontdoorRuleConditionsPostArgsCondition.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditionsPostArgsCondition(
      matchValues: map['matchValues'] == null ? null : ((map['matchValues'] as List).cast<String>()).input(),
      negateCondition: map['negateCondition'] == null ? null : (map['negateCondition'] as bool).input(),
      operator: (map['operator'] as String).input(),
      postArgsName: (map['postArgsName'] as String).input(),
      transforms: map['transforms'] == null ? null : ((map['transforms'] as List).cast<String>()).input(),
    );
  }
}

