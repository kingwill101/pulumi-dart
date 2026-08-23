// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_rule_match.dart';
import 'region_security_policy_rule_network_match.dart';
import 'region_security_policy_rule_preconfigured_waf_config.dart';
import 'region_security_policy_rule_rate_limit_options.dart';

/// {@template pulumi_compute_region_security_policy_rule_region_security_policy_rule_args_doc}
/// The set of arguments for RegionSecurityPolicyRule.
/// {@endtemplate}
/// {@macro pulumi_compute_region_security_policy_rule_region_security_policy_rule_args_doc}
class RegionSecurityPolicyRuleArgs {
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
  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyRuleMatch>? match;
  /// A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced.
  /// The match criteria for a rule consists of built-in match fields (like 'srcIpRanges') and potentially multiple user-defined match fields ('userDefinedFields').
  /// Field values may be extracted directly from the packet or derived from it (e.g. 'srcRegionCodes'). Some fields may not be present in every packet (e.g. 'srcPorts'). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds.
  /// Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it's not required to be present. For strings specifying '*' is also equivalent to match all.
  /// For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet.
  /// Example:
  /// networkMatch: srcIpRanges: - "192.0.2.0/24" - "198.51.100.0/24" userDefinedFields: - name: "ipv4FragmentOffset" values: - "1-0x1fff"
  /// The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named "ipv4FragmentOffset" with a value between 1 and 0x1fff inclusive
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyRuleNetworkMatch>? networkMatch;
  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyRulePreconfiguredWafConfig>? preconfiguredWafConfig;
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
  final pulumi.Input<RegionSecurityPolicyRuleRateLimitOptions>? rateLimitOptions;
  /// The Region in which the created Region Security Policy rule should reside.
  final pulumi.Input<String> region;
  /// The name of the security policy this rule belongs to.
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [RegionSecurityPolicyRuleArgs].
  /// [action] The Action to perform when the rule is matched. The following are the valid actions:
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [match] A match condition that incoming traffic is evaluated against.
  /// [networkMatch] A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced.
  /// [preconfiguredWafConfig] Preconfigured WAF configuration to be applied for the rule.
  /// [preview] If set to true, the specified action is not enforced.
  /// [priority] An integer indicating the priority of a rule in the list.
  /// [project] The ID of the project in which the resource belongs.
  /// [rateLimitOptions] Must be specified if the action is "rateBasedBan" or "throttle". Cannot be specified for any other actions.
  /// [region] The Region in which the created Region Security Policy rule should reside.
  /// [securityPolicy] The name of the security policy this rule belongs to.
  const RegionSecurityPolicyRuleArgs({
    required this.action,
    this.deletionPolicy,
    this.description,
    this.match,
    this.networkMatch,
    this.preconfiguredWafConfig,
    this.preview,
    required this.priority,
    this.project,
    this.rateLimitOptions,
    required this.region,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'match': ?pulumi.Input.mapOptionalInputValue<RegionSecurityPolicyRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'networkMatch': ?pulumi.Input.mapOptionalInputValue<RegionSecurityPolicyRuleNetworkMatch, Map<String, dynamic>>(networkMatch, (value) => value.toMap()),
      'preconfiguredWafConfig': ?pulumi.Input.mapOptionalInputValue<RegionSecurityPolicyRulePreconfiguredWafConfig, Map<String, dynamic>>(preconfiguredWafConfig, (value) => value.toMap()),
      'preview': ?preview,
      'priority': priority,
      'project': ?project,
      'rateLimitOptions': ?pulumi.Input.mapOptionalInputValue<RegionSecurityPolicyRuleRateLimitOptions, Map<String, dynamic>>(rateLimitOptions, (value) => value.toMap()),
      'region': region,
      'securityPolicy': securityPolicy,
    };
  }

  factory RegionSecurityPolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyRuleArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionSecurityPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkMatch: (() { final guardedValue = map['networkMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionSecurityPolicyRuleNetworkMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preconfiguredWafConfig: (() { final guardedValue = map['preconfiguredWafConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionSecurityPolicyRulePreconfiguredWafConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preview: (() { final guardedValue = map['preview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rateLimitOptions: (() { final guardedValue = map['rateLimitOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionSecurityPolicyRuleRateLimitOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      securityPolicy: pulumi.Input.fromValue(map['securityPolicy'] as String),
    );
  }
}
