// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_matcher_layer4_config_response.dart';
import 'firewall_policy_rule_secure_tag_response.dart';

/// Represents a match condition that incoming traffic is evaluated against. Exactly one field must be specified.
class FirewallPolicyRuleMatcherResponse {
  /// Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10.
  final pulumi.Input<List<String>> destAddressGroups;
  /// Fully Qualified Domain Name (FQDN) which should be matched against traffic destination. Maximum number of destination fqdn allowed is 100.
  final pulumi.Input<List<String>> destFqdns;
  /// CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  final pulumi.Input<List<String>> destIpRanges;
  /// Region codes whose IP addresses will be used to match for destination of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of dest region codes allowed is 5000.
  final pulumi.Input<List<String>> destRegionCodes;
  /// Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic destination.
  final pulumi.Input<List<String>> destThreatIntelligences;
  /// Pairs of IP protocols and ports that the rule should match.
  final pulumi.Input<List<FirewallPolicyRuleMatcherLayer4ConfigResponse>> layer4Configs;
  /// Address groups which should be matched against the traffic source. Maximum number of source address groups is 10.
  final pulumi.Input<List<String>> srcAddressGroups;
  /// Fully Qualified Domain Name (FQDN) which should be matched against traffic source. Maximum number of source fqdn allowed is 100.
  final pulumi.Input<List<String>> srcFqdns;
  /// CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  final pulumi.Input<List<String>> srcIpRanges;
  /// Region codes whose IP addresses will be used to match for source of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of source region codes allowed is 5000.
  final pulumi.Input<List<String>> srcRegionCodes;
  /// List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the srcSecureTag are INEFFECTIVE, and there is no srcIpRange, this rule will be ignored. Maximum number of source tag values allowed is 256.
  final pulumi.Input<List<FirewallPolicyRuleSecureTagResponse>> srcSecureTags;
  /// Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic source.
  final pulumi.Input<List<String>> srcThreatIntelligences;

  /// Creates a new [FirewallPolicyRuleMatcherResponse].
  /// [destAddressGroups] Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10.
  /// [destFqdns] Fully Qualified Domain Name (FQDN) which should be matched against traffic destination. Maximum number of destination fqdn allowed is 100.
  /// [destIpRanges] CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  /// [destRegionCodes] Region codes whose IP addresses will be used to match for destination of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of dest region codes allowed is 5000.
  /// [destThreatIntelligences] Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic destination.
  /// [layer4Configs] Pairs of IP protocols and ports that the rule should match.
  /// [srcAddressGroups] Address groups which should be matched against the traffic source. Maximum number of source address groups is 10.
  /// [srcFqdns] Fully Qualified Domain Name (FQDN) which should be matched against traffic source. Maximum number of source fqdn allowed is 100.
  /// [srcIpRanges] CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  /// [srcRegionCodes] Region codes whose IP addresses will be used to match for source of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of source region codes allowed is 5000.
  /// [srcSecureTags] List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the srcSecureTag are INEFFECTIVE, and there is no srcIpRange, this rule will be ignored. Maximum number of source tag values allowed is 256.
  /// [srcThreatIntelligences] Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic source.
  const FirewallPolicyRuleMatcherResponse({
    required this.destAddressGroups,
    required this.destFqdns,
    required this.destIpRanges,
    required this.destRegionCodes,
    required this.destThreatIntelligences,
    required this.layer4Configs,
    required this.srcAddressGroups,
    required this.srcFqdns,
    required this.srcIpRanges,
    required this.srcRegionCodes,
    required this.srcSecureTags,
    required this.srcThreatIntelligences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destAddressGroups': destAddressGroups,
      'destFqdns': destFqdns,
      'destIpRanges': destIpRanges,
      'destRegionCodes': destRegionCodes,
      'destThreatIntelligences': destThreatIntelligences,
      'layer4Configs': pulumi.Input.mapInputValue<List<FirewallPolicyRuleMatcherLayer4ConfigResponse>, List<Map<String, dynamic>>>(layer4Configs, (value) => pulumi.Input.encodeList<FirewallPolicyRuleMatcherLayer4ConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'srcAddressGroups': srcAddressGroups,
      'srcFqdns': srcFqdns,
      'srcIpRanges': srcIpRanges,
      'srcRegionCodes': srcRegionCodes,
      'srcSecureTags': pulumi.Input.mapInputValue<List<FirewallPolicyRuleSecureTagResponse>, List<Map<String, dynamic>>>(srcSecureTags, (value) => pulumi.Input.encodeList<FirewallPolicyRuleSecureTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'srcThreatIntelligences': srcThreatIntelligences,
    };
  }

  factory FirewallPolicyRuleMatcherResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleMatcherResponse(
      destAddressGroups: pulumi.Input.fromValue((map['destAddressGroups'] as List).cast<String>()),
      destFqdns: pulumi.Input.fromValue((map['destFqdns'] as List).cast<String>()),
      destIpRanges: pulumi.Input.fromValue((map['destIpRanges'] as List).cast<String>()),
      destRegionCodes: pulumi.Input.fromValue((map['destRegionCodes'] as List).cast<String>()),
      destThreatIntelligences: pulumi.Input.fromValue((map['destThreatIntelligences'] as List).cast<String>()),
      layer4Configs: pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyRuleMatcherLayer4ConfigResponse>(map['layer4Configs']!, (value) => FirewallPolicyRuleMatcherLayer4ConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
      srcAddressGroups: pulumi.Input.fromValue((map['srcAddressGroups'] as List).cast<String>()),
      srcFqdns: pulumi.Input.fromValue((map['srcFqdns'] as List).cast<String>()),
      srcIpRanges: pulumi.Input.fromValue((map['srcIpRanges'] as List).cast<String>()),
      srcRegionCodes: pulumi.Input.fromValue((map['srcRegionCodes'] as List).cast<String>()),
      srcSecureTags: pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyRuleSecureTagResponse>(map['srcSecureTags']!, (value) => FirewallPolicyRuleSecureTagResponse.fromMap((value as Map).cast<String, dynamic>()))),
      srcThreatIntelligences: pulumi.Input.fromValue((map['srcThreatIntelligences'] as List).cast<String>()),
    );
  }
}

