// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorFirewallPolicyCustomRuleMatchCondition {
  /// Up to `600` possible values to match. Limit is in total across all `matchCondition` blocks and `matchValues` arguments. String value itself can be up to `256` characters in length.
  final pulumi.Input<List<String>> matchValues;
  /// The request variable to compare with. Possible values are `Cookies`, `PostArgs`, `QueryString`, `RemoteAddr`, `RequestBody`, `RequestHeader`, `RequestMethod`, `RequestUri`, or `SocketAddr`.
  ///
  /// &gt; **Note:** `RemoteAddr` inspects the original client IP from the `X-Forwarded-For` header. Use `SocketAddr` when you need to match the source IP address seen by Front Door WAF.
  final pulumi.Input<String> matchVariable;
  /// Should the result of the condition be negated.
  final pulumi.Input<bool?>? negationCondition;
  /// Comparison type to use for matching with the variable value. Possible values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GeoMatch`, `GreaterThan`, `GreaterThanOrEqual`, `IPMatch`, `LessThan`, `LessThanOrEqual`, or `RegEx`.
  final pulumi.Input<String> operator;
  /// Match against a specific key if the `matchVariable` is `QueryString`, `PostArgs`, `RequestHeader`, or `Cookies`.
  final pulumi.Input<String?>? selector;
  /// Up to `5` transforms to apply. Possible values are `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `URLDecode`, or `URLEncode`.
  final pulumi.Input<List<String>?>? transforms;

  /// Creates a new [FrontdoorFirewallPolicyCustomRuleMatchCondition].
  /// [matchValues] Up to `600` possible values to match. Limit is in total across all `matchCondition` blocks and `matchValues` arguments. String value itself can be up to `256` characters in length.
  /// [matchVariable] The request variable to compare with. Possible values are `Cookies`, `PostArgs`, `QueryString`, `RemoteAddr`, `RequestBody`, `RequestHeader`, `RequestMethod`, `RequestUri`, or `SocketAddr`.
  /// [negationCondition] Should the result of the condition be negated.
  /// [operator] Comparison type to use for matching with the variable value. Possible values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GeoMatch`, `GreaterThan`, `GreaterThanOrEqual`, `IPMatch`, `LessThan`, `LessThanOrEqual`, or `RegEx`.
  /// [selector] Match against a specific key if the `matchVariable` is `QueryString`, `PostArgs`, `RequestHeader`, or `Cookies`.
  /// [transforms] Up to `5` transforms to apply. Possible values are `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `URLDecode`, or `URLEncode`.
  const FrontdoorFirewallPolicyCustomRuleMatchCondition({
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
      matchValues: pulumi.Input.fromValue((map['matchValues'] as List).cast<String>()),
      matchVariable: pulumi.Input.fromValue(map['matchVariable'] as String),
      negationCondition: (() { final guardedValue = map['negationCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transforms: (() { final guardedValue = map['transforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
