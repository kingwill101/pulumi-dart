// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyManagedRuleExclusion {
  /// The variable type to be excluded. Possible values are `QueryStringArgNames`, `RequestBodyPostArgNames`, `RequestCookieNames`, `RequestHeaderNames`.
  final pulumi.Input<String> matchVariable;
  /// Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to. Possible values are: `Equals`, `Contains`, `StartsWith`, `EndsWith`, `EqualsAny`.
  final pulumi.Input<String> operator;
  /// Selector for the value in the `match_variable` attribute this exclusion applies to.
  final pulumi.Input<String> selector;

  /// Creates a new [FirewallPolicyManagedRuleExclusion].
  /// [matchVariable] The variable type to be excluded. Possible values are `QueryStringArgNames`, `RequestBodyPostArgNames`, `RequestCookieNames`, `RequestHeaderNames`.
  /// [operator] Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to. Possible values are: `Equals`, `Contains`, `StartsWith`, `EndsWith`, `EqualsAny`.
  /// [selector] Selector for the value in the `match_variable` attribute this exclusion applies to.
  FirewallPolicyManagedRuleExclusion({
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

  factory FirewallPolicyManagedRuleExclusion.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyManagedRuleExclusion(
      matchVariable: (map['matchVariable'] as String).input(),
      operator: (map['operator'] as String).input(),
      selector: (map['selector'] as String).input(),
    );
  }
}

