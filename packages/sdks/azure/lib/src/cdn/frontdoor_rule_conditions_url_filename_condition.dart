// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorRuleConditionsUrlFilenameCondition {
  /// A list of one or more string or integer values(e.g. "1") representing the value of the request file name to match. If multiple values are specified, they're evaluated using `OR` logic.
  ///
  /// > **Note:** The `match_values` field is only optional if the `operator` is set to `Any`.
  final List<String>? matchValues;
  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final bool? negateCondition;
  /// A Conditional operator. Possible values include `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual` or `RegEx`. Details can be found in the `Condition Operator List` below.
  final String operator;
  /// A Conditional operator. Possible values include `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode` or `UrlEncode`. Details can be found in the `Condition Transform List` below.
  final List<String>? transforms;

  /// Creates a new [FrontdoorRuleConditionsUrlFilenameCondition].
  /// [matchValues] A list of one or more string or integer values(e.g. "1") representing the value of the request file name to match. If multiple values are specified, they're evaluated using `OR` logic.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] A Conditional operator. Possible values include `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual` or `RegEx`. Details can be found in the `Condition Operator List` below.
  /// [transforms] A Conditional operator. Possible values include `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode` or `UrlEncode`. Details can be found in the `Condition Transform List` below.
  FrontdoorRuleConditionsUrlFilenameCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'transforms': ?transforms,
    };
  }

  factory FrontdoorRuleConditionsUrlFilenameCondition.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditionsUrlFilenameCondition(
      matchValues: map['matchValues'] == null ? null : (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
    );
  }
}

