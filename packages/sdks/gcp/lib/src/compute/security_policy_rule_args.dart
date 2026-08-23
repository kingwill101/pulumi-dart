// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_header_action.dart';
import 'security_policy_rule_match.dart';
import 'security_policy_rule_preconfigured_waf_config.dart';
import 'security_policy_rule_rate_limit_options.dart';
import 'security_policy_rule_redirect_options.dart';

/// {@template pulumi_compute_security_policy_rule_security_policy_rule_args_doc}
/// The set of arguments for SecurityPolicyRule.
/// {@endtemplate}
/// {@macro pulumi_compute_security_policy_rule_security_policy_rule_args_doc}
class SecurityPolicyRuleArgs {
  /// The Action to perform when the rule is matched. The following are the valid actions:
  /// * allow: allow access to target.
  /// * deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.
  /// * rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.
  /// * redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// * throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  final pulumi.Input<String> action;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  final pulumi.Input<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Must be specified if the action is "rateBasedBan" or "throttle". Cannot be specified for any other actions.
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleRateLimitOptions>? rateLimitOptions;
  /// Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleRedirectOptions>? redirectOptions;
  /// The name of the security policy this rule belongs to.
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [SecurityPolicyRuleArgs].
  /// [action] The Action to perform when the rule is matched. The following are the valid actions:
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [headerAction] Optional, additional actions that are performed on headers. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [match] A match condition that incoming traffic is evaluated against.
  /// [preconfiguredWafConfig] Preconfigured WAF configuration to be applied for the rule.
  /// [preview] If set to true, the specified action is not enforced.
  /// [priority] An integer indicating the priority of a rule in the list.
  /// [project] The ID of the project in which the resource belongs.
  /// [rateLimitOptions] Must be specified if the action is "rateBasedBan" or "throttle". Cannot be specified for any other actions.
  /// [redirectOptions] Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [securityPolicy] The name of the security policy this rule belongs to.
  const SecurityPolicyRuleArgs({
    required this.action,
    this.deletionPolicy,
    this.description,
    this.headerAction,
    this.match,
    this.preconfiguredWafConfig,
    this.preview,
    required this.priority,
    this.project,
    this.rateLimitOptions,
    this.redirectOptions,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'headerAction': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleHeaderAction, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'match': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'preconfiguredWafConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRulePreconfiguredWafConfig, Map<String, dynamic>>(preconfiguredWafConfig, (value) => value.toMap()),
      'preview': ?preview,
      'priority': priority,
      'project': ?project,
      'rateLimitOptions': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRateLimitOptions, Map<String, dynamic>>(rateLimitOptions, (value) => value.toMap()),
      'redirectOptions': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRedirectOptions, Map<String, dynamic>>(redirectOptions, (value) => value.toMap()),
      'securityPolicy': securityPolicy,
    };
  }

  factory SecurityPolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerAction: (() { final guardedValue = map['headerAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preconfiguredWafConfig: (() { final guardedValue = map['preconfiguredWafConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRulePreconfiguredWafConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preview: (() { final guardedValue = map['preview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rateLimitOptions: (() { final guardedValue = map['rateLimitOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleRateLimitOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redirectOptions: (() { final guardedValue = map['redirectOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleRedirectOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityPolicy: pulumi.Input.fromValue(map['securityPolicy'] as String),
    );
  }
}
