// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_rule_match.dart';
import 'get_region_security_policy_rule_network_match.dart';
import 'get_region_security_policy_rule_preconfigured_waf_config.dart';
import 'get_region_security_policy_rule_rate_limit_option.dart';

class GetRegionSecurityPolicyRule {
  /// The Action to perform when the rule is matched. The following are the valid actions:
  ///
  /// * allow: allow access to target.
  ///
  /// * deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.
  ///
  /// * rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.
  ///
  /// * redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.
  ///
  /// * throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  final pulumi.Input<String> action;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String> description;
  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding 'action' is enforced.
  final pulumi.Input<List<GetRegionSecurityPolicyRuleMatch>> matches;
  /// A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced.
  /// The match criteria for a rule consists of built-in match fields (like 'srcIpRanges') and potentially multiple user-defined match fields ('userDefinedFields').
  /// Field values may be extracted directly from the packet or derived from it (e.g. 'srcRegionCodes'). Some fields may not be present in every packet (e.g. 'srcPorts'). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds.
  /// Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it's not required to be present. For strings specifying '*' is also equivalent to match all.
  /// For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet.
  /// Example:
  /// networkMatch: srcIpRanges: - "192.0.2.0/24" - "198.51.100.0/24" userDefinedFields: - name: "ipv4FragmentOffset" values: - "1-0x1fff"
  /// The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named "ipv4FragmentOffset" with a value between 1 and 0x1fff inclusive
  final pulumi.Input<List<GetRegionSecurityPolicyRuleNetworkMatch>> networkMatches;
  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  final pulumi.Input<List<GetRegionSecurityPolicyRulePreconfiguredWafConfig>> preconfiguredWafConfigs;
  /// If set to true, the specified action is not enforced.
  final pulumi.Input<bool> preview;
  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  final pulumi.Input<int> priority;
  /// Must be specified if the action is "rateBasedBan" or "throttle". Cannot be specified for any other actions.
  final pulumi.Input<List<GetRegionSecurityPolicyRuleRateLimitOption>> rateLimitOptions;

  /// Creates a new [GetRegionSecurityPolicyRule].
  /// [action] The Action to perform when the rule is matched. The following are the valid actions:
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [matches] A match condition that incoming traffic is evaluated against.
  /// [networkMatches] A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced.
  /// [preconfiguredWafConfigs] Preconfigured WAF configuration to be applied for the rule.
  /// [preview] If set to true, the specified action is not enforced.
  /// [priority] An integer indicating the priority of a rule in the list.
  /// [rateLimitOptions] Must be specified if the action is "rateBasedBan" or "throttle". Cannot be specified for any other actions.
  const GetRegionSecurityPolicyRule({
    required this.action,
    required this.description,
    required this.matches,
    required this.networkMatches,
    required this.preconfiguredWafConfigs,
    required this.preview,
    required this.priority,
    required this.rateLimitOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': description,
      'matches': pulumi.Input.mapInputValue<List<GetRegionSecurityPolicyRuleMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetRegionSecurityPolicyRuleMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkMatches': pulumi.Input.mapInputValue<List<GetRegionSecurityPolicyRuleNetworkMatch>, List<Map<String, dynamic>>>(networkMatches, (value) => pulumi.Input.encodeList<GetRegionSecurityPolicyRuleNetworkMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preconfiguredWafConfigs': pulumi.Input.mapInputValue<List<GetRegionSecurityPolicyRulePreconfiguredWafConfig>, List<Map<String, dynamic>>>(preconfiguredWafConfigs, (value) => pulumi.Input.encodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preview': preview,
      'priority': priority,
      'rateLimitOptions': pulumi.Input.mapInputValue<List<GetRegionSecurityPolicyRuleRateLimitOption>, List<Map<String, dynamic>>>(rateLimitOptions, (value) => pulumi.Input.encodeList<GetRegionSecurityPolicyRuleRateLimitOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionSecurityPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionSecurityPolicyRuleMatch>(map['matches']!, (value) => GetRegionSecurityPolicyRuleMatch.fromMap((value as Map).cast<String, dynamic>()))),
      networkMatches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionSecurityPolicyRuleNetworkMatch>(map['networkMatches']!, (value) => GetRegionSecurityPolicyRuleNetworkMatch.fromMap((value as Map).cast<String, dynamic>()))),
      preconfiguredWafConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfig>(map['preconfiguredWafConfigs']!, (value) => GetRegionSecurityPolicyRulePreconfiguredWafConfig.fromMap((value as Map).cast<String, dynamic>()))),
      preview: pulumi.Input.fromValue(map['preview'] as bool),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      rateLimitOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionSecurityPolicyRuleRateLimitOption>(map['rateLimitOptions']!, (value) => GetRegionSecurityPolicyRuleRateLimitOption.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
