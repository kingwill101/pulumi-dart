// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_header_action.dart';
import 'security_policy_rule_match.dart';
import 'security_policy_rule_preconfigured_waf_config.dart';
import 'security_policy_rule_rate_limit_options.dart';
import 'security_policy_rule_redirect_options.dart';

class SecurityPolicyRule {
  /// Action to take when `match` matches the request. Valid values:
  final pulumi.Input<String> action;
  /// An optional description of this rule. Max size is 64.
  final pulumi.Input<String>? description;
  /// Additional actions that are performed on headers. Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleHeaderAction>? headerAction;
  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding `action` is enforced. Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleMatch> match;
  /// Preconfigured WAF configuration to be applied for the rule. If the rule does not evaluate preconfigured WAF rules, i.e., if `evaluatePreconfiguredWaf()` is not used, this field will have no effect. Structure is documented below.
  final pulumi.Input<SecurityPolicyRulePreconfiguredWafConfig>? preconfiguredWafConfig;
  /// When set to true, the `action` specified above is not enforced.
  /// Stackdriver logs for requests that trigger a preview action are annotated as such.
  final pulumi.Input<bool>? preview;
  /// An unique positive integer indicating the priority of evaluation for a rule.
  /// Rules are evaluated from highest priority (lowest numerically) to lowest priority (highest numerically) in order.
  final pulumi.Input<int> priority;
  /// Must be specified if the `action` is `rateBasedBan` or `throttle`. Cannot be specified for other actions. Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleRateLimitOptions>? rateLimitOptions;
  /// Can be specified if the `action` is `redirect`. Cannot be specified for other actions. Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleRedirectOptions>? redirectOptions;

  /// Creates a new [SecurityPolicyRule].
  /// [action] Action to take when `match` matches the request. Valid values:
  /// [description] An optional description of this rule. Max size is 64.
  /// [headerAction] Additional actions that are performed on headers. Structure is documented below.
  /// [match] A match condition that incoming traffic is evaluated against.
  /// [preconfiguredWafConfig] Preconfigured WAF configuration to be applied for the rule. If the rule does not evaluate preconfigured WAF rules, i.e., if `evaluatePreconfiguredWaf()` is not used, this field will have no effect. Structure is documented below.
  /// [preview] When set to true, the `action` specified above is not enforced.
  /// [priority] An unique positive integer indicating the priority of evaluation for a rule.
  /// [rateLimitOptions] Must be specified if the `action` is `rateBasedBan` or `throttle`. Cannot be specified for other actions. Structure is documented below.
  /// [redirectOptions] Can be specified if the `action` is `redirect`. Cannot be specified for other actions. Structure is documented below.
  const SecurityPolicyRule({
    required this.action,
    this.description,
    this.headerAction,
    required this.match,
    this.preconfiguredWafConfig,
    this.preview,
    required this.priority,
    this.rateLimitOptions,
    this.redirectOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'headerAction': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleHeaderAction, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'match': pulumi.Input.mapInputValue<SecurityPolicyRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'preconfiguredWafConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRulePreconfiguredWafConfig, Map<String, dynamic>>(preconfiguredWafConfig, (value) => value.toMap()),
      'preview': ?preview,
      'priority': priority,
      'rateLimitOptions': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRateLimitOptions, Map<String, dynamic>>(rateLimitOptions, (value) => value.toMap()),
      'redirectOptions': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRedirectOptions, Map<String, dynamic>>(redirectOptions, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRule.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerAction: (() { final guardedValue = map['headerAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      match: pulumi.Input.fromValue(SecurityPolicyRuleMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
      preconfiguredWafConfig: (() { final guardedValue = map['preconfiguredWafConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRulePreconfiguredWafConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preview: (() { final guardedValue = map['preview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      rateLimitOptions: (() { final guardedValue = map['rateLimitOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleRateLimitOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redirectOptions: (() { final guardedValue = map['redirectOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleRedirectOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
