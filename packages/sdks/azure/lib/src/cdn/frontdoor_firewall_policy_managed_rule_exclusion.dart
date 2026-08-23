// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorFirewallPolicyManagedRuleExclusion {
  /// The variable type to be excluded. Possible values are `QueryStringArgNames`, `RequestBodyPostArgNames`, `RequestCookieNames`, `RequestHeaderNames`, `RequestBodyJsonArgNames`
  ///
  /// &gt; **Note:** `RequestBodyJsonArgNames` is only available on Default Rule Set (DRS) 2.0 or later
  final pulumi.Input<String> matchVariable;
  /// Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to. Possible values are: `Equals`, `Contains`, `StartsWith`, `EndsWith`, or `EqualsAny`.
  final pulumi.Input<String> operator;
  /// Selector for the value in the `matchVariable` attribute this exclusion applies to.
  ///
  /// &gt; **Note:** `selector` must be set to `*` if `operator` is set to `EqualsAny`.
  final pulumi.Input<String> selector;

  /// Creates a new [FrontdoorFirewallPolicyManagedRuleExclusion].
  /// [matchVariable] The variable type to be excluded. Possible values are `QueryStringArgNames`, `RequestBodyPostArgNames`, `RequestCookieNames`, `RequestHeaderNames`, `RequestBodyJsonArgNames`
  /// [operator] Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to. Possible values are: `Equals`, `Contains`, `StartsWith`, `EndsWith`, or `EqualsAny`.
  /// [selector] Selector for the value in the `matchVariable` attribute this exclusion applies to.
  const FrontdoorFirewallPolicyManagedRuleExclusion({
    required this.matchVariable,
    required this.operator,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchVariable': matchVariable,
      'operator': operator,
      'selector': selector,
    };
  }

  factory FrontdoorFirewallPolicyManagedRuleExclusion.fromMap(Map<String, dynamic> map) {
    return FrontdoorFirewallPolicyManagedRuleExclusion(
      matchVariable: pulumi.Input.fromValue(map['matchVariable'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      selector: pulumi.Input.fromValue(map['selector'] as String),
    );
  }
}
