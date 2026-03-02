// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorFirewallPolicyCustomRuleMatchCondition {
  /// Up to `600` possible values to match. Limit is in total across all `match_condition` blocks and `match_values` arguments. String value itself can be up to `256` characters in length.
  final pulumi.Input<List<String>> matchValues;
  /// The request variable to compare with. Possible values are `Cookies`, `PostArgs`, `QueryString`, `RemoteAddr`, `RequestBody`, `RequestHeader`, `RequestMethod`, `RequestUri`, or `SocketAddr`.
  final pulumi.Input<String> matchVariable;
  /// Should the result of the condition be negated.
  final pulumi.Input<bool>? negationCondition;
  /// Comparison type to use for matching with the variable value. Possible values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GeoMatch`, `GreaterThan`, `GreaterThanOrEqual`, `IPMatch`, `LessThan`, `LessThanOrEqual`, or `RegEx`.
  final pulumi.Input<String> operator;
  /// Match against a specific key if the `match_variable` is `QueryString`, `PostArgs`, `RequestHeader`, or `Cookies`.
  final pulumi.Input<String>? selector;
  /// Up to `5` transforms to apply. Possible values are `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `URLDecode`, or `URLEncode`.
  final pulumi.Input<List<String>>? transforms;

  /// Creates a new [FrontdoorFirewallPolicyCustomRuleMatchCondition].
  /// [matchValues] Up to `600` possible values to match. Limit is in total across all `match_condition` blocks and `match_values` arguments. String value itself can be up to `256` characters in length.
  /// [matchVariable] The request variable to compare with. Possible values are `Cookies`, `PostArgs`, `QueryString`, `RemoteAddr`, `RequestBody`, `RequestHeader`, `RequestMethod`, `RequestUri`, or `SocketAddr`.
  /// [negationCondition] Should the result of the condition be negated.
  /// [operator] Comparison type to use for matching with the variable value. Possible values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GeoMatch`, `GreaterThan`, `GreaterThanOrEqual`, `IPMatch`, `LessThan`, `LessThanOrEqual`, or `RegEx`.
  /// [selector] Match against a specific key if the `match_variable` is `QueryString`, `PostArgs`, `RequestHeader`, or `Cookies`.
  /// [transforms] Up to `5` transforms to apply. Possible values are `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `URLDecode`, or `URLEncode`.
  FrontdoorFirewallPolicyCustomRuleMatchCondition({
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

  factory FrontdoorFirewallPolicyCustomRuleMatchCondition.fromMap(Map<String, dynamic> map) {
    return FrontdoorFirewallPolicyCustomRuleMatchCondition(
      matchValues: ((map['matchValues'] as List).cast<String>()).input(),
      matchVariable: (map['matchVariable'] as String).input(),
      negationCondition: map['negationCondition'] == null ? null : (map['negationCondition'] as bool).input(),
      operator: (map['operator'] as String).input(),
      selector: map['selector'] == null ? null : (map['selector'] as String).input(),
      transforms: map['transforms'] == null ? null : ((map['transforms'] as List).cast<String>()).input(),
    );
  }
}

