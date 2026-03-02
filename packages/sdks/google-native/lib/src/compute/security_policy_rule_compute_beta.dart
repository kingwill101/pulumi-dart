// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_direction_compute_beta.dart';
import 'security_policy_rule_http_header_action_compute_beta.dart';
import 'security_policy_rule_matcher_compute_beta.dart';
import 'security_policy_rule_network_matcher_compute_beta.dart';
import 'security_policy_rule_preconfigured_waf_config_compute_beta.dart';
import 'security_policy_rule_rate_limit_options_compute_beta.dart';
import 'security_policy_rule_redirect_options_compute_beta.dart';

/// Represents a rule that describes one or more match conditions along with the action to be taken when traffic matches this condition (allow or deny).
class SecurityPolicyRuleComputeBeta {
  /// The Action to perform when the rule is matched. The following are the valid actions: - allow: allow access to target. - deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for `STATUS` are 403, 404, and 502. - rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rate_limit_options to be set. - redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR. - throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rate_limit_options to be set for this.
  final pulumi.Input<String>? action;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The direction in which this rule applies. This field may only be specified when versioned_expr is set to FIREWALL.
  final pulumi.Input<SecurityPolicyRuleDirectionComputeBeta>? direction;
  /// Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on "goto_next" rules. This field may only be specified when the versioned_expr is set to FIREWALL.
  final pulumi.Input<bool>? enableLogging;
  /// Optional, additional actions that are performed on headers. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<SecurityPolicyRuleHttpHeaderActionComputeBeta>? headerAction;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  final pulumi.Input<SecurityPolicyRuleMatcherComputeBeta>? match;
  /// A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced. The match criteria for a rule consists of built-in match fields (like 'srcIpRanges') and potentially multiple user-defined match fields ('userDefinedFields'). Field values may be extracted directly from the packet or derived from it (e.g. 'srcRegionCodes'). Some fields may not be present in every packet (e.g. 'srcPorts'). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds. Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it's not required to be present. For strings specifying '*' is also equivalent to match all. For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet. Example: networkMatch: srcIpRanges: - "192.0.2.0/24" - "198.51.100.0/24" userDefinedFields: - name: "ipv4_fragment_offset" values: - "1-0x1fff" The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named "ipv4_fragment_offset" with a value between 1 and 0x1fff inclusive.
  final pulumi.Input<SecurityPolicyRuleNetworkMatcherComputeBeta>? networkMatch;
  /// Preconfigured WAF configuration to be applied for the rule. If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  final pulumi.Input<SecurityPolicyRulePreconfiguredWafConfigComputeBeta>? preconfiguredWafConfig;
  /// If set to true, the specified action is not enforced.
  final pulumi.Input<bool>? preview;
  /// An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  final pulumi.Input<int>? priority;
  /// Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  final pulumi.Input<SecurityPolicyRuleRateLimitOptionsComputeBeta>? rateLimitOptions;
  /// Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<SecurityPolicyRuleRedirectOptionsComputeBeta>? redirectOptions;
  /// Identifier for the rule. This is only unique within the given security policy. This can only be set during rule creation, if rule number is not specified it will be generated by the server.
  final pulumi.Input<String>? ruleNumber;
  /// A list of network resource URLs to which this rule applies. This field allows you to control which network's VMs get this rule. If this field is left blank, all VMs within the organization will receive the rule. This field may only be specified when versioned_expr is set to FIREWALL.
  final pulumi.Input<List<String>>? targetResources;
  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final pulumi.Input<List<String>>? targetServiceAccounts;

  /// Creates a new [SecurityPolicyRuleComputeBeta].
  /// [action] The Action to perform when the rule is matched. The following are the valid actions: - allow: allow access to target. - deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for `STATUS` are 403, 404, and 502. - rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rate_limit_options to be set. - redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR. - throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rate_limit_options to be set for this.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [direction] The direction in which this rule applies. This field may only be specified when versioned_expr is set to FIREWALL.
  /// [enableLogging] Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on "goto_next" rules. This field may only be specified when the versioned_expr is set to FIREWALL.
  /// [headerAction] Optional, additional actions that are performed on headers. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [networkMatch] A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced. The match criteria for a rule consists of built-in match fields (like 'srcIpRanges') and potentially multiple user-defined match fields ('userDefinedFields'). Field values may be extracted directly from the packet or derived from it (e.g. 'srcRegionCodes'). Some fields may not be present in every packet (e.g. 'srcPorts'). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds. Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it's not required to be present. For strings specifying '*' is also equivalent to match all. For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet. Example: networkMatch: srcIpRanges: - "192.0.2.0/24" - "198.51.100.0/24" userDefinedFields: - name: "ipv4_fragment_offset" values: - "1-0x1fff" The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named "ipv4_fragment_offset" with a value between 1 and 0x1fff inclusive.
  /// [preconfiguredWafConfig] Preconfigured WAF configuration to be applied for the rule. If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// [preview] If set to true, the specified action is not enforced.
  /// [priority] An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  /// [rateLimitOptions] Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  /// [redirectOptions] Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [ruleNumber] Identifier for the rule. This is only unique within the given security policy. This can only be set during rule creation, if rule number is not specified it will be generated by the server.
  /// [targetResources] A list of network resource URLs to which this rule applies. This field allows you to control which network's VMs get this rule. If this field is left blank, all VMs within the organization will receive the rule. This field may only be specified when versioned_expr is set to FIREWALL.
  /// [targetServiceAccounts] A list of service accounts indicating the sets of instances that are applied with this rule.
  SecurityPolicyRuleComputeBeta({
    this.action,
    this.description,
    this.direction,
    this.enableLogging,
    this.headerAction,
    this.match,
    this.networkMatch,
    this.preconfiguredWafConfig,
    this.preview,
    this.priority,
    this.rateLimitOptions,
    this.redirectOptions,
    this.ruleNumber,
    this.targetResources,
    this.targetServiceAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'direction': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleDirectionComputeBeta, String>(direction, (value) => value.value),
      'enableLogging': ?enableLogging,
      'headerAction': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleHttpHeaderActionComputeBeta, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'match': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleMatcherComputeBeta, Map<String, dynamic>>(match, (value) => value.toMap()),
      'networkMatch': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleNetworkMatcherComputeBeta, Map<String, dynamic>>(networkMatch, (value) => value.toMap()),
      'preconfiguredWafConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRulePreconfiguredWafConfigComputeBeta, Map<String, dynamic>>(preconfiguredWafConfig, (value) => value.toMap()),
      'preview': ?preview,
      'priority': ?priority,
      'rateLimitOptions': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRateLimitOptionsComputeBeta, Map<String, dynamic>>(rateLimitOptions, (value) => value.toMap()),
      'redirectOptions': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRedirectOptionsComputeBeta, Map<String, dynamic>>(redirectOptions, (value) => value.toMap()),
      'ruleNumber': ?ruleNumber,
      'targetResources': ?targetResources,
      'targetServiceAccounts': ?targetServiceAccounts,
    };
  }

  factory SecurityPolicyRuleComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleComputeBeta(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      direction: map['direction'] == null ? null : (SecurityPolicyRuleDirectionComputeBeta.fromValue(map['direction']! as String)).input(),
      enableLogging: map['enableLogging'] == null ? null : (map['enableLogging']! as bool).input(),
      headerAction: map['headerAction'] == null ? null : (SecurityPolicyRuleHttpHeaderActionComputeBeta.fromMap((map['headerAction']! as Map).cast<String, dynamic>())).input(),
      match: map['match'] == null ? null : (SecurityPolicyRuleMatcherComputeBeta.fromMap((map['match']! as Map).cast<String, dynamic>())).input(),
      networkMatch: map['networkMatch'] == null ? null : (SecurityPolicyRuleNetworkMatcherComputeBeta.fromMap((map['networkMatch']! as Map).cast<String, dynamic>())).input(),
      preconfiguredWafConfig: map['preconfiguredWafConfig'] == null ? null : (SecurityPolicyRulePreconfiguredWafConfigComputeBeta.fromMap((map['preconfiguredWafConfig']! as Map).cast<String, dynamic>())).input(),
      preview: map['preview'] == null ? null : (map['preview']! as bool).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      rateLimitOptions: map['rateLimitOptions'] == null ? null : (SecurityPolicyRuleRateLimitOptionsComputeBeta.fromMap((map['rateLimitOptions']! as Map).cast<String, dynamic>())).input(),
      redirectOptions: map['redirectOptions'] == null ? null : (SecurityPolicyRuleRedirectOptionsComputeBeta.fromMap((map['redirectOptions']! as Map).cast<String, dynamic>())).input(),
      ruleNumber: map['ruleNumber'] == null ? null : (map['ruleNumber']! as String).input(),
      targetResources: map['targetResources'] == null ? null : ((map['targetResources']! as List).cast<String>()).input(),
      targetServiceAccounts: map['targetServiceAccounts'] == null ? null : ((map['targetServiceAccounts']! as List).cast<String>()).input(),
    );
  }
}

