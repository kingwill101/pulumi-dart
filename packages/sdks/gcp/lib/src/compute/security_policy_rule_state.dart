// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_header_action.dart';
import 'security_policy_rule_match.dart';
import 'security_policy_rule_preconfigured_waf_config.dart';
import 'security_policy_rule_rate_limit_options.dart';
import 'security_policy_rule_redirect_options.dart';

/// Input properties used for looking up and filtering SecurityPolicyRule resources.
class SecurityPolicyRuleState {
  /// The Action to perform when the rule is matched. The following are the valid actions:
  /// * allow: allow access to target.
  /// * deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.
  /// * rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.
  /// * redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// * throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  final pulumi.Input<String>? action;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Optional, additional actions that are performed on headers. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleHeaderAction>? headerAction;
  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleMatch>? match;
  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyRulePreconfiguredWafConfig>? preconfiguredWafConfig;
  /// If set to true, the specified action is not enforced.
  final pulumi.Input<bool>? preview;
  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleRateLimitOptions>? rateLimitOptions;
  /// Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleRedirectOptions>? redirectOptions;
  /// The name of the security policy this rule belongs to.
  final pulumi.Input<String>? securityPolicy;

  /// Creates a new [SecurityPolicyRuleState].
  /// [action] The Action to perform when the rule is matched. The following are the valid actions:
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [headerAction] Optional, additional actions that are performed on headers. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [match] A match condition that incoming traffic is evaluated against.
  /// [preconfiguredWafConfig] Preconfigured WAF configuration to be applied for the rule.
  /// [preview] If set to true, the specified action is not enforced.
  /// [priority] An integer indicating the priority of a rule in the list.
  /// [project] The ID of the project in which the resource belongs.
  /// [rateLimitOptions] Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  /// [redirectOptions] Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [securityPolicy] The name of the security policy this rule belongs to.
  SecurityPolicyRuleState({
    this.action,
    this.description,
    this.headerAction,
    this.match,
    this.preconfiguredWafConfig,
    this.preview,
    this.priority,
    this.project,
    this.rateLimitOptions,
    this.redirectOptions,
    this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'headerAction': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleHeaderAction, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'match': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'preconfiguredWafConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRulePreconfiguredWafConfig, Map<String, dynamic>>(preconfiguredWafConfig, (value) => value.toMap()),
      'preview': ?preview,
      'priority': ?priority,
      'project': ?project,
      'rateLimitOptions': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRateLimitOptions, Map<String, dynamic>>(rateLimitOptions, (value) => value.toMap()),
      'redirectOptions': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRedirectOptions, Map<String, dynamic>>(redirectOptions, (value) => value.toMap()),
      'securityPolicy': ?securityPolicy,
    };
  }

  factory SecurityPolicyRuleState.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleState(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      headerAction: map['headerAction'] == null ? null : (SecurityPolicyRuleHeaderAction.fromMap((map['headerAction'] as Map).cast<String, dynamic>())).input(),
      match: map['match'] == null ? null : (SecurityPolicyRuleMatch.fromMap((map['match'] as Map).cast<String, dynamic>())).input(),
      preconfiguredWafConfig: map['preconfiguredWafConfig'] == null ? null : (SecurityPolicyRulePreconfiguredWafConfig.fromMap((map['preconfiguredWafConfig'] as Map).cast<String, dynamic>())).input(),
      preview: map['preview'] == null ? null : (map['preview'] as bool).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      rateLimitOptions: map['rateLimitOptions'] == null ? null : (SecurityPolicyRuleRateLimitOptions.fromMap((map['rateLimitOptions'] as Map).cast<String, dynamic>())).input(),
      redirectOptions: map['redirectOptions'] == null ? null : (SecurityPolicyRuleRedirectOptions.fromMap((map['redirectOptions'] as Map).cast<String, dynamic>())).input(),
      securityPolicy: map['securityPolicy'] == null ? null : (map['securityPolicy'] as String).input(),
    );
  }
}

