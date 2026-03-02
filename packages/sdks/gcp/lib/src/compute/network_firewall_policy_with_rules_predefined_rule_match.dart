// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_with_rules_predefined_rule_match_layer4_config.dart';
import 'network_firewall_policy_with_rules_predefined_rule_match_src_secure_tag.dart';

class NetworkFirewallPolicyWithRulesPredefinedRuleMatch {
  /// Address groups which should be matched against the traffic destination.
  /// Maximum number of destination address groups is 10.
  final pulumi.Input<List<String>>? destAddressGroups;
  /// Fully Qualified Domain Name (FQDN) which should be matched against
  /// traffic destination. Maximum number of destination fqdn allowed is 100.
  final pulumi.Input<List<String>>? destFqdns;
  /// Destination IP address range in CIDR format. Required for
  /// EGRESS rules.
  final pulumi.Input<List<String>>? destIpRanges;
  /// Region codes whose IP addresses will be used to match for destination
  /// of traffic. Should be specified as 2 letter country code defined as per
  /// ISO 3166 alpha-2 country codes. ex."US"
  /// Maximum number of destination region codes allowed is 5000.
  final pulumi.Input<List<String>>? destRegionCodes;
  /// Names of Network Threat Intelligence lists.
  /// The IPs in these lists will be matched against traffic destination.
  final pulumi.Input<List<String>>? destThreatIntelligences;
  /// Pairs of IP protocols and ports that the rule should match.
  /// Structure is documented below.
  final pulumi.Input<List<NetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config>>? layer4Configs;
  /// Address groups which should be matched against the traffic source.
  /// Maximum number of source address groups is 10.
  final pulumi.Input<List<String>>? srcAddressGroups;
  /// Fully Qualified Domain Name (FQDN) which should be matched against
  /// traffic source. Maximum number of source fqdn allowed is 100.
  final pulumi.Input<List<String>>? srcFqdns;
  /// Source IP address range in CIDR format. Required for
  /// INGRESS rules.
  final pulumi.Input<List<String>>? srcIpRanges;
  /// Region codes whose IP addresses will be used to match for source
  /// of traffic. Should be specified as 2 letter country code defined as per
  /// ISO 3166 alpha-2 country codes. ex."US"
  /// Maximum number of source region codes allowed is 5000.
  final pulumi.Input<List<String>>? srcRegionCodes;
  /// List of secure tag values, which should be matched at the source
  /// of the traffic.
  /// For INGRESS rule, if all the <code>srcSecureTag</code> are INEFFECTIVE,
  /// and there is no <code>srcIpRange</code>, this rule will be ignored.
  /// Maximum number of source tag values allowed is 256.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_rule_match_layer4_config"></a>The `layer4_config` block supports:
  final pulumi.Input<List<NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag>>? srcSecureTags;
  /// Names of Network Threat Intelligence lists.
  /// The IPs in these lists will be matched against traffic source.
  final pulumi.Input<List<String>>? srcThreatIntelligences;

  /// Creates a new [NetworkFirewallPolicyWithRulesPredefinedRuleMatch].
  /// [destAddressGroups] Address groups which should be matched against the traffic destination.
  /// [destFqdns] Fully Qualified Domain Name (FQDN) which should be matched against
  /// [destIpRanges] Destination IP address range in CIDR format. Required for
  /// [destRegionCodes] Region codes whose IP addresses will be used to match for destination
  /// [destThreatIntelligences] Names of Network Threat Intelligence lists.
  /// [layer4Configs] Pairs of IP protocols and ports that the rule should match.
  /// [srcAddressGroups] Address groups which should be matched against the traffic source.
  /// [srcFqdns] Fully Qualified Domain Name (FQDN) which should be matched against
  /// [srcIpRanges] Source IP address range in CIDR format. Required for
  /// [srcRegionCodes] Region codes whose IP addresses will be used to match for source
  /// [srcSecureTags] List of secure tag values, which should be matched at the source
  /// [srcThreatIntelligences] Names of Network Threat Intelligence lists.
  NetworkFirewallPolicyWithRulesPredefinedRuleMatch({
    this.destAddressGroups,
    this.destFqdns,
    this.destIpRanges,
    this.destRegionCodes,
    this.destThreatIntelligences,
    this.layer4Configs,
    this.srcAddressGroups,
    this.srcFqdns,
    this.srcIpRanges,
    this.srcRegionCodes,
    this.srcSecureTags,
    this.srcThreatIntelligences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destAddressGroups': ?destAddressGroups,
      'destFqdns': ?destFqdns,
      'destIpRanges': ?destIpRanges,
      'destRegionCodes': ?destRegionCodes,
      'destThreatIntelligences': ?destThreatIntelligences,
      'layer4Configs': ?pulumi.Input.mapOptionalInputValue<List<NetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config>, List<Map<String, dynamic>>>(layer4Configs, (value) => pulumi.Input.encodeList<NetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config, Map<String, dynamic>>(value, (value) => value.toMap())),
      'srcAddressGroups': ?srcAddressGroups,
      'srcFqdns': ?srcFqdns,
      'srcIpRanges': ?srcIpRanges,
      'srcRegionCodes': ?srcRegionCodes,
      'srcSecureTags': ?pulumi.Input.mapOptionalInputValue<List<NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag>, List<Map<String, dynamic>>>(srcSecureTags, (value) => pulumi.Input.encodeList<NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'srcThreatIntelligences': ?srcThreatIntelligences,
    };
  }

  factory NetworkFirewallPolicyWithRulesPredefinedRuleMatch.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyWithRulesPredefinedRuleMatch(
      destAddressGroups: map['destAddressGroups'] == null ? null : ((map['destAddressGroups']! as List).cast<String>()).input(),
      destFqdns: map['destFqdns'] == null ? null : ((map['destFqdns']! as List).cast<String>()).input(),
      destIpRanges: map['destIpRanges'] == null ? null : ((map['destIpRanges']! as List).cast<String>()).input(),
      destRegionCodes: map['destRegionCodes'] == null ? null : ((map['destRegionCodes']! as List).cast<String>()).input(),
      destThreatIntelligences: map['destThreatIntelligences'] == null ? null : ((map['destThreatIntelligences']! as List).cast<String>()).input(),
      layer4Configs: map['layer4Configs'] == null ? null : (pulumi.Input.decodeList<NetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config>(map['layer4Configs']!, (value) => NetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config.fromMap((value as Map).cast<String, dynamic>()))).input(),
      srcAddressGroups: map['srcAddressGroups'] == null ? null : ((map['srcAddressGroups']! as List).cast<String>()).input(),
      srcFqdns: map['srcFqdns'] == null ? null : ((map['srcFqdns']! as List).cast<String>()).input(),
      srcIpRanges: map['srcIpRanges'] == null ? null : ((map['srcIpRanges']! as List).cast<String>()).input(),
      srcRegionCodes: map['srcRegionCodes'] == null ? null : ((map['srcRegionCodes']! as List).cast<String>()).input(),
      srcSecureTags: map['srcSecureTags'] == null ? null : (pulumi.Input.decodeList<NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag>(map['srcSecureTags']!, (value) => NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      srcThreatIntelligences: map['srcThreatIntelligences'] == null ? null : ((map['srcThreatIntelligences']! as List).cast<String>()).input(),
    );
  }
}

