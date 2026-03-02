// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_match_layer4_config.dart';
import 'firewall_policy_rule_match_src_secure_tag.dart';

class FirewallPolicyRuleMatch {
  /// Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10.
  final pulumi.Input<List<String>>? destAddressGroups;
  /// Fully Qualified Domain Name (FQDN) which should be matched against traffic destination. Maximum number of destination fqdn allowed is 100.
  final pulumi.Input<List<String>>? destFqdns;
  /// CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  final pulumi.Input<List<String>>? destIpRanges;
  /// Network scope of the traffic destination.
  /// Possible values are: `INTERNET`, `INTRA_VPC`, `NON_INTERNET`, `VPC_NETWORKS`.
  final pulumi.Input<String>? destNetworkScope;
  /// Region codes whose IP addresses will be used to match for destination of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of dest region codes allowed is 5000.
  final pulumi.Input<List<String>>? destRegionCodes;
  /// Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic destination.
  final pulumi.Input<List<String>>? destThreatIntelligences;
  /// Pairs of IP protocols and ports that the rule should match.
  /// Structure is documented below.
  final pulumi.Input<List<FirewallPolicyRuleMatchLayer4Config>> layer4Configs;
  /// Address groups which should be matched against the traffic source. Maximum number of source address groups is 10.
  final pulumi.Input<List<String>>? srcAddressGroups;
  /// Fully Qualified Domain Name (FQDN) which should be matched against traffic source. Maximum number of source fqdn allowed is 100.
  final pulumi.Input<List<String>>? srcFqdns;
  /// CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  final pulumi.Input<List<String>>? srcIpRanges;
  /// Network scope of the traffic source.
  /// Possible values are: `INTERNET`, `INTRA_VPC`, `NON_INTERNET`, `VPC_NETWORKS`.
  final pulumi.Input<String>? srcNetworkScope;
  /// Networks of the traffic source. It can be either a full or partial url.
  final pulumi.Input<List<String>>? srcNetworks;
  /// Region codes whose IP addresses will be used to match for source of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of source region codes allowed is 5000.
  final pulumi.Input<List<String>>? srcRegionCodes;
  /// List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the srcSecureTag are INEFFECTIVE, and there is no srcIpRange, this rule will be ignored. Maximum number of source tag values allowed is 256.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_match_layer4_configs"></a>The `layer4_configs` block supports:
  final pulumi.Input<List<FirewallPolicyRuleMatchSrcSecureTag>>? srcSecureTags;
  /// Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic source.
  final pulumi.Input<List<String>>? srcThreatIntelligences;

  /// Creates a new [FirewallPolicyRuleMatch].
  /// [destAddressGroups] Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10.
  /// [destFqdns] Fully Qualified Domain Name (FQDN) which should be matched against traffic destination. Maximum number of destination fqdn allowed is 100.
  /// [destIpRanges] CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  /// [destNetworkScope] Network scope of the traffic destination.
  /// [destRegionCodes] Region codes whose IP addresses will be used to match for destination of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of dest region codes allowed is 5000.
  /// [destThreatIntelligences] Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic destination.
  /// [layer4Configs] Pairs of IP protocols and ports that the rule should match.
  /// [srcAddressGroups] Address groups which should be matched against the traffic source. Maximum number of source address groups is 10.
  /// [srcFqdns] Fully Qualified Domain Name (FQDN) which should be matched against traffic source. Maximum number of source fqdn allowed is 100.
  /// [srcIpRanges] CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  /// [srcNetworkScope] Network scope of the traffic source.
  /// [srcNetworks] Networks of the traffic source. It can be either a full or partial url.
  /// [srcRegionCodes] Region codes whose IP addresses will be used to match for source of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of source region codes allowed is 5000.
  /// [srcSecureTags] List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the srcSecureTag are INEFFECTIVE, and there is no srcIpRange, this rule will be ignored. Maximum number of source tag values allowed is 256.
  /// [srcThreatIntelligences] Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic source.
  FirewallPolicyRuleMatch({
    this.destAddressGroups,
    this.destFqdns,
    this.destIpRanges,
    this.destNetworkScope,
    this.destRegionCodes,
    this.destThreatIntelligences,
    required this.layer4Configs,
    this.srcAddressGroups,
    this.srcFqdns,
    this.srcIpRanges,
    this.srcNetworkScope,
    this.srcNetworks,
    this.srcRegionCodes,
    this.srcSecureTags,
    this.srcThreatIntelligences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destAddressGroups': ?destAddressGroups,
      'destFqdns': ?destFqdns,
      'destIpRanges': ?destIpRanges,
      'destNetworkScope': ?destNetworkScope,
      'destRegionCodes': ?destRegionCodes,
      'destThreatIntelligences': ?destThreatIntelligences,
      'layer4Configs': pulumi.Input.mapInputValue<List<FirewallPolicyRuleMatchLayer4Config>, List<Map<String, dynamic>>>(layer4Configs, (value) => pulumi.Input.encodeList<FirewallPolicyRuleMatchLayer4Config, Map<String, dynamic>>(value, (value) => value.toMap())),
      'srcAddressGroups': ?srcAddressGroups,
      'srcFqdns': ?srcFqdns,
      'srcIpRanges': ?srcIpRanges,
      'srcNetworkScope': ?srcNetworkScope,
      'srcNetworks': ?srcNetworks,
      'srcRegionCodes': ?srcRegionCodes,
      'srcSecureTags': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleMatchSrcSecureTag>, List<Map<String, dynamic>>>(srcSecureTags, (value) => pulumi.Input.encodeList<FirewallPolicyRuleMatchSrcSecureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'srcThreatIntelligences': ?srcThreatIntelligences,
    };
  }

  factory FirewallPolicyRuleMatch.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleMatch(
      destAddressGroups: map['destAddressGroups'] == null ? null : ((map['destAddressGroups'] as List).cast<String>()).input(),
      destFqdns: map['destFqdns'] == null ? null : ((map['destFqdns'] as List).cast<String>()).input(),
      destIpRanges: map['destIpRanges'] == null ? null : ((map['destIpRanges'] as List).cast<String>()).input(),
      destNetworkScope: map['destNetworkScope'] == null ? null : (map['destNetworkScope'] as String).input(),
      destRegionCodes: map['destRegionCodes'] == null ? null : ((map['destRegionCodes'] as List).cast<String>()).input(),
      destThreatIntelligences: map['destThreatIntelligences'] == null ? null : ((map['destThreatIntelligences'] as List).cast<String>()).input(),
      layer4Configs: (pulumi.Input.decodeList<FirewallPolicyRuleMatchLayer4Config>(map['layer4Configs'], (value) => FirewallPolicyRuleMatchLayer4Config.fromMap((value as Map).cast<String, dynamic>()))).input(),
      srcAddressGroups: map['srcAddressGroups'] == null ? null : ((map['srcAddressGroups'] as List).cast<String>()).input(),
      srcFqdns: map['srcFqdns'] == null ? null : ((map['srcFqdns'] as List).cast<String>()).input(),
      srcIpRanges: map['srcIpRanges'] == null ? null : ((map['srcIpRanges'] as List).cast<String>()).input(),
      srcNetworkScope: map['srcNetworkScope'] == null ? null : (map['srcNetworkScope'] as String).input(),
      srcNetworks: map['srcNetworks'] == null ? null : ((map['srcNetworks'] as List).cast<String>()).input(),
      srcRegionCodes: map['srcRegionCodes'] == null ? null : ((map['srcRegionCodes'] as List).cast<String>()).input(),
      srcSecureTags: map['srcSecureTags'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyRuleMatchSrcSecureTag>(map['srcSecureTags'], (value) => FirewallPolicyRuleMatchSrcSecureTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      srcThreatIntelligences: map['srcThreatIntelligences'] == null ? null : ((map['srcThreatIntelligences'] as List).cast<String>()).input(),
    );
  }
}

