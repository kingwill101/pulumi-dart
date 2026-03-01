// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorRuleConditionsRequestHeaderCondition {
  /// A string value representing the name of the `POST` argument.
  final String headerName;
  /// One or more string or integer values(e.g. "1") representing the value of the request header to match. If multiple values are specified, they're evaluated using `OR` logic.
  final List<String>? matchValues;
  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final bool? negateCondition;
  /// A Conditional operator. Possible values include `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual` or `RegEx`. Details can be found in the `Condition Operator List` below.
  final String operator;
  /// A Conditional operator. Possible values include `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode` or `UrlEncode`. Details can be found in the `Condition Transform List` below.
  final List<String>? transforms;

  /// Creates a new [FrontdoorRuleConditionsRequestHeaderCondition].
  /// [headerName] A string value representing the name of the `POST` argument.
  /// [matchValues] One or more string or integer values(e.g. "1") representing the value of the request header to match. If multiple values are specified, they're evaluated using `OR` logic.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] A Conditional operator. Possible values include `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual` or `RegEx`. Details can be found in the `Condition Operator List` below.
  /// [transforms] A Conditional operator. Possible values include `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode` or `UrlEncode`. Details can be found in the `Condition Transform List` below.
  FrontdoorRuleConditionsRequestHeaderCondition({
    required this.headerName,
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'transforms': ?transforms,
    };
  }

  factory FrontdoorRuleConditionsRequestHeaderCondition.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditionsRequestHeaderCondition(
      headerName: map['headerName'] as String,
      matchValues: map['matchValues'] == null ? null : (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
    );
  }
}

