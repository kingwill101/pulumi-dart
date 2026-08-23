// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_rule_header_action.dart';
import 'organization_security_policy_rule_match.dart';
import 'organization_security_policy_rule_preconfigured_waf_config.dart';
import 'organization_security_policy_rule_redirect_options.dart';

/// {@template pulumi_compute_organization_security_policy_rule_organization_security_policy_rule_args_doc}
/// The set of arguments for OrganizationSecurityPolicyRule.
/// {@endtemplate}
/// {@macro pulumi_compute_organization_security_policy_rule_organization_security_policy_rule_args_doc}
class OrganizationSecurityPolicyRuleArgs {
  /// The Action to perform when the client connection triggers the rule. Valid actions are:
  /// "allow": allow access to target.
  /// "deny": deny access to target.
  /// "gotoNext": forward the request to the next hierarchical policy for evaluation.
  /// "redirect": redirect to a different target. Parameters for this action can be configured via redirectOptions. Only EXTERNAL_302 redirect type is supported for organization security policies.
  final pulumi.Input<String> action;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A description of the rule.
  final pulumi.Input<String>? description;
  /// (Optional, Beta)
  /// The direction in which this rule applies. If unspecified an INGRESS rule is created.
  /// This field may only be specified when the versionedExpr is set to FIREWALL.
  /// Possible values are: `INGRESS`, `EGRESS`.
  final pulumi.Input<String>? direction;
  /// (Optional, Beta)
  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the
  /// configured export destination in Stackdriver.
  /// This field may only be specified when the versionedExpr is set to FIREWALL.
  final pulumi.Input<bool>? enableLogging;
  /// Optional, additional actions that are performed on headers.
  /// Structure is documented below.
  final pulumi.Input<OrganizationSecurityPolicyRuleHeaderAction>? headerAction;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<OrganizationSecurityPolicyRuleMatch> match;
  /// The ID of the OrganizationSecurityPolicy this rule applies to.
  final pulumi.Input<String> policyId;
  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// Structure is documented below.
  final pulumi.Input<OrganizationSecurityPolicyRulePreconfiguredWafConfig>? preconfiguredWafConfig;
  /// If set to true, the specified action is not enforced.
  final pulumi.Input<bool>? preview;
  /// An integer indicating the priority of a rule in the list. The priority must be a value
  /// between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the
  /// highest priority and 2147483647 is the lowest prority.
  final pulumi.Input<int> priority;
  /// Parameters defining the redirect action. Cannot be specified for any other actions.
  /// Note: For organization security policies, only EXTERNAL_302 redirect type is supported. GOOGLE_RECAPTCHA is not supported.
  /// Structure is documented below.
  final pulumi.Input<OrganizationSecurityPolicyRuleRedirectOptions>? redirectOptions;
  /// (Optional, Beta)
  /// A list of network resource URLs to which this rule applies.
  /// This field allows you to control which network's VMs get
  /// this rule. If this field is left blank, all VMs
  /// within the organization will receive the rule.
  final pulumi.Input<List<String>>? targetResources;
  /// (Optional, Beta)
  /// A list of service accounts indicating the sets of
  /// instances that are applied with this rule.
  final pulumi.Input<List<String>>? targetServiceAccounts;

  /// Creates a new [OrganizationSecurityPolicyRuleArgs].
  /// [action] The Action to perform when the client connection triggers the rule. Valid actions are:
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the rule.
  /// [direction] (Optional, Beta)
  /// [enableLogging] (Optional, Beta)
  /// [headerAction] Optional, additional actions that are performed on headers.
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [policyId] The ID of the OrganizationSecurityPolicy this rule applies to.
  /// [preconfiguredWafConfig] Preconfigured WAF configuration to be applied for the rule.
  /// [preview] If set to true, the specified action is not enforced.
  /// [priority] An integer indicating the priority of a rule in the list. The priority must be a value
  /// [redirectOptions] Parameters defining the redirect action. Cannot be specified for any other actions.
  /// [targetResources] (Optional, Beta)
  /// [targetServiceAccounts] (Optional, Beta)
  const OrganizationSecurityPolicyRuleArgs({
    required this.action,
    this.deletionPolicy,
    this.description,
    this.direction,
    this.enableLogging,
    this.headerAction,
    required this.match,
    required this.policyId,
    this.preconfiguredWafConfig,
    this.preview,
    required this.priority,
    this.redirectOptions,
    this.targetResources,
    this.targetServiceAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'direction': ?direction,
      'enableLogging': ?enableLogging,
      'headerAction': ?pulumi.Input.mapOptionalInputValue<OrganizationSecurityPolicyRuleHeaderAction, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'match': pulumi.Input.mapInputValue<OrganizationSecurityPolicyRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'policyId': policyId,
      'preconfiguredWafConfig': ?pulumi.Input.mapOptionalInputValue<OrganizationSecurityPolicyRulePreconfiguredWafConfig, Map<String, dynamic>>(preconfiguredWafConfig, (value) => value.toMap()),
      'preview': ?preview,
      'priority': priority,
      'redirectOptions': ?pulumi.Input.mapOptionalInputValue<OrganizationSecurityPolicyRuleRedirectOptions, Map<String, dynamic>>(redirectOptions, (value) => value.toMap()),
      'targetResources': ?targetResources,
      'targetServiceAccounts': ?targetServiceAccounts,
    };
  }

  factory OrganizationSecurityPolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRuleArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableLogging: (() { final guardedValue = map['enableLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      headerAction: (() { final guardedValue = map['headerAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationSecurityPolicyRuleHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      match: pulumi.Input.fromValue(OrganizationSecurityPolicyRuleMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      preconfiguredWafConfig: (() { final guardedValue = map['preconfiguredWafConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationSecurityPolicyRulePreconfiguredWafConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preview: (() { final guardedValue = map['preview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      redirectOptions: (() { final guardedValue = map['redirectOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationSecurityPolicyRuleRedirectOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetResources: (() { final guardedValue = map['targetResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetServiceAccounts: (() { final guardedValue = map['targetServiceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
