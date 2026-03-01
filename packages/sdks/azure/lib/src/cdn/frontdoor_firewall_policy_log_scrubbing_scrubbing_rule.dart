// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorFirewallPolicyLogScrubbingScrubbingRule {
  /// Is this `scrubbing_rule` enabled? Defaults to `true`.
  final bool? enabled;
  /// The variable to be scrubbed from the logs. Possible values include `QueryStringArgNames`, `RequestBodyJsonArgNames`, `RequestBodyPostArgNames`, `RequestCookieNames`, `RequestHeaderNames`, `RequestIPAddress`, or `RequestUri`.
  ///
  /// > **Note:** `RequestIPAddress` and `RequestUri` must use the `EqualsAny` `operator`.
  final String matchVariable;
  /// When the `match_variable` is a collection, operate on the `selector` to specify which elements in the collection this `scrubbing_rule` applies to. Possible values are `Equals` or `EqualsAny`. Defaults to `Equals`.
  final String? operator;
  /// When the `match_variable` is a collection, the `operator` is used to specify which elements in the collection this `scrubbing_rule` applies to.
  ///
  /// > **Note:** The `selector` field cannot be set if the `operator` is set to `EqualsAny`.
  final String? selector;

  /// Creates a new [FrontdoorFirewallPolicyLogScrubbingScrubbingRule].
  /// [enabled] Is this `scrubbing_rule` enabled? Defaults to `true`.
  /// [matchVariable] The variable to be scrubbed from the logs. Possible values include `QueryStringArgNames`, `RequestBodyJsonArgNames`, `RequestBodyPostArgNames`, `RequestCookieNames`, `RequestHeaderNames`, `RequestIPAddress`, or `RequestUri`.
  /// [operator] When the `match_variable` is a collection, operate on the `selector` to specify which elements in the collection this `scrubbing_rule` applies to. Possible values are `Equals` or `EqualsAny`. Defaults to `Equals`.
  /// [selector] When the `match_variable` is a collection, the `operator` is used to specify which elements in the collection this `scrubbing_rule` applies to.
  FrontdoorFirewallPolicyLogScrubbingScrubbingRule({
    this.enabled,
    required this.matchVariable,
    this.operator,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'matchVariable': matchVariable,
      'operator': ?operator,
      'selector': ?selector,
    };
  }

  factory FrontdoorFirewallPolicyLogScrubbingScrubbingRule.fromMap(Map<String, dynamic> map) {
    return FrontdoorFirewallPolicyLogScrubbingScrubbingRule(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      matchVariable: map['matchVariable'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}

