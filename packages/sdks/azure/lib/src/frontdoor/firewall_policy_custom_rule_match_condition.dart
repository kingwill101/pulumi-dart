// ignore_for_file: unused_element, unnecessary_cast


class FirewallPolicyCustomRuleMatchCondition {
  /// Up to `600` possible values to match. Limit is in total across all `match_condition` blocks and `match_values` arguments. String value itself can be up to `256` characters long.
  final List<String> matchValues;
  /// The request variable to compare with. Possible values are `Cookies`, `PostArgs`, `QueryString`, `RemoteAddr`, `RequestBody`, `RequestHeader`, `RequestMethod`, `RequestUri`, or `SocketAddr`.
  final String matchVariable;
  /// Should the result of the condition be negated.
  final bool? negationCondition;
  /// Comparison type to use for matching with the variable value. Possible values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GeoMatch`, `GreaterThan`, `GreaterThanOrEqual`, `IPMatch`, `LessThan`, `LessThanOrEqual` or `RegEx`.
  final String operator;
  /// Match against a specific key if the `match_variable` is `QueryString`, `PostArgs`, `RequestHeader` or `Cookies`.
  final String? selector;
  /// Up to `5` transforms to apply. Possible values are `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `URLDecode` or`URLEncode`.
  final List<String>? transforms;

  /// Creates a new [FirewallPolicyCustomRuleMatchCondition].
  /// [matchValues] Up to `600` possible values to match. Limit is in total across all `match_condition` blocks and `match_values` arguments. String value itself can be up to `256` characters long.
  /// [matchVariable] The request variable to compare with. Possible values are `Cookies`, `PostArgs`, `QueryString`, `RemoteAddr`, `RequestBody`, `RequestHeader`, `RequestMethod`, `RequestUri`, or `SocketAddr`.
  /// [negationCondition] Should the result of the condition be negated.
  /// [operator] Comparison type to use for matching with the variable value. Possible values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GeoMatch`, `GreaterThan`, `GreaterThanOrEqual`, `IPMatch`, `LessThan`, `LessThanOrEqual` or `RegEx`.
  /// [selector] Match against a specific key if the `match_variable` is `QueryString`, `PostArgs`, `RequestHeader` or `Cookies`.
  /// [transforms] Up to `5` transforms to apply. Possible values are `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `URLDecode` or`URLEncode`.
  FirewallPolicyCustomRuleMatchCondition({
    required this.matchValues,
    required this.matchVariable,
    this.negationCondition,
    required this.operator,
    this.selector,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': matchValues,
      'matchVariable': matchVariable,
      'negationCondition': ?negationCondition,
      'operator': operator,
      'selector': ?selector,
      'transforms': ?transforms,
    };
  }

  factory FirewallPolicyCustomRuleMatchCondition.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyCustomRuleMatchCondition(
      matchValues: (map['matchValues'] as List).cast<String>(),
      matchVariable: map['matchVariable'] as String,
      negationCondition: map['negationCondition'] == null ? null : map['negationCondition'] as bool,
      operator: map['operator'] as String,
      selector: map['selector'] == null ? null : map['selector'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
    );
  }
}

