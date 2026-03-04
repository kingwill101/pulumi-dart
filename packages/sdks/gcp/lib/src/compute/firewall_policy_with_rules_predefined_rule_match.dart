// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_with_rules_predefined_rule_match_layer4_config.dart';
import 'firewall_policy_with_rules_predefined_rule_match_src_secure_tag.dart';

class FirewallPolicyWithRulesPredefinedRuleMatch {
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
  final pulumi.Input<
    List<FirewallPolicyWithRulesPredefinedRuleMatchLayer4Config>
  >?
  layer4Configs;

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
  /// For INGRESS rule, if all the &lt;code&gt;srcSecureTag&lt;/code&gt; are INEFFECTIVE,
  /// and there is no &lt;code&gt;srcIpRange&lt;/code&gt;, this rule will be ignored.
  /// Maximum number of source tag values allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<
    List<FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag>
  >?
  srcSecureTags;

  /// Names of Network Threat Intelligence lists.
  /// The IPs in these lists will be matched against traffic source.
  final pulumi.Input<List<String>>? srcThreatIntelligences;

  /// Creates a new [FirewallPolicyWithRulesPredefinedRuleMatch].
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
  FirewallPolicyWithRulesPredefinedRuleMatch({
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
      'layer4Configs':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallPolicyWithRulesPredefinedRuleMatchLayer4Config>,
            List<Map<String, dynamic>>
          >(
            layer4Configs,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallPolicyWithRulesPredefinedRuleMatchLayer4Config,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'srcAddressGroups': ?srcAddressGroups,
      'srcFqdns': ?srcFqdns,
      'srcIpRanges': ?srcIpRanges,
      'srcRegionCodes': ?srcRegionCodes,
      'srcSecureTags':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag>,
            List<Map<String, dynamic>>
          >(
            srcSecureTags,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'srcThreatIntelligences': ?srcThreatIntelligences,
    };
  }

  factory FirewallPolicyWithRulesPredefinedRuleMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyWithRulesPredefinedRuleMatch(
      destAddressGroups: (() {
        final guardedValue = map['destAddressGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destFqdns: (() {
        final guardedValue = map['destFqdns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destIpRanges: (() {
        final guardedValue = map['destIpRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destRegionCodes: (() {
        final guardedValue = map['destRegionCodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destThreatIntelligences: (() {
        final guardedValue = map['destThreatIntelligences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      layer4Configs: (() {
        final guardedValue = map['layer4Configs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FirewallPolicyWithRulesPredefinedRuleMatchLayer4Config
          >(
            guardedValue,
            (value) =>
                FirewallPolicyWithRulesPredefinedRuleMatchLayer4Config.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      srcAddressGroups: (() {
        final guardedValue = map['srcAddressGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      srcFqdns: (() {
        final guardedValue = map['srcFqdns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      srcIpRanges: (() {
        final guardedValue = map['srcIpRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      srcRegionCodes: (() {
        final guardedValue = map['srcRegionCodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      srcSecureTags: (() {
        final guardedValue = map['srcSecureTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag
          >(
            guardedValue,
            (value) =>
                FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      srcThreatIntelligences: (() {
        final guardedValue = map['srcThreatIntelligences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
