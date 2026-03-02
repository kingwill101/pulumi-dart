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
  /// Must be specified if the `action` is `rate_based_ban` or `throttle`. Cannot be specified for other actions. Structure is documented below.
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
  /// [rateLimitOptions] Must be specified if the `action` is `rate_based_ban` or `throttle`. Cannot be specified for other actions. Structure is documented below.
  /// [redirectOptions] Can be specified if the `action` is `redirect`. Cannot be specified for other actions. Structure is documented below.
  SecurityPolicyRule({
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
      action: (map['action'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      headerAction: map['headerAction'] == null ? null : (SecurityPolicyRuleHeaderAction.fromMap((map['headerAction'] as Map).cast<String, dynamic>())).input(),
      match: (SecurityPolicyRuleMatch.fromMap((map['match'] as Map).cast<String, dynamic>())).input(),
      preconfiguredWafConfig: map['preconfiguredWafConfig'] == null ? null : (SecurityPolicyRulePreconfiguredWafConfig.fromMap((map['preconfiguredWafConfig'] as Map).cast<String, dynamic>())).input(),
      preview: map['preview'] == null ? null : (map['preview'] as bool).input(),
      priority: (map['priority'] as int).input(),
      rateLimitOptions: map['rateLimitOptions'] == null ? null : (SecurityPolicyRuleRateLimitOptions.fromMap((map['rateLimitOptions'] as Map).cast<String, dynamic>())).input(),
      redirectOptions: map['redirectOptions'] == null ? null : (SecurityPolicyRuleRedirectOptions.fromMap((map['redirectOptions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

