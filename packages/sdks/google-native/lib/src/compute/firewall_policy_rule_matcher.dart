// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_matcher_layer4_config.dart';
import 'firewall_policy_rule_secure_tag.dart';

/// Represents a match condition that incoming traffic is evaluated against. Exactly one field must be specified.
class FirewallPolicyRuleMatcher {
  /// Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10.
  final pulumi.Input<List<String>>? destAddressGroups;

  /// Fully Qualified Domain Name (FQDN) which should be matched against traffic destination. Maximum number of destination fqdn allowed is 100.
  final pulumi.Input<List<String>>? destFqdns;

  /// CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  final pulumi.Input<List<String>>? destIpRanges;

  /// Region codes whose IP addresses will be used to match for destination of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of dest region codes allowed is 5000.
  final pulumi.Input<List<String>>? destRegionCodes;

  /// Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic destination.
  final pulumi.Input<List<String>>? destThreatIntelligences;

  /// Pairs of IP protocols and ports that the rule should match.
  final pulumi.Input<List<FirewallPolicyRuleMatcherLayer4Config>>?
  layer4Configs;

  /// Address groups which should be matched against the traffic source. Maximum number of source address groups is 10.
  final pulumi.Input<List<String>>? srcAddressGroups;

  /// Fully Qualified Domain Name (FQDN) which should be matched against traffic source. Maximum number of source fqdn allowed is 100.
  final pulumi.Input<List<String>>? srcFqdns;

  /// CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  final pulumi.Input<List<String>>? srcIpRanges;

  /// Region codes whose IP addresses will be used to match for source of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of source region codes allowed is 5000.
  final pulumi.Input<List<String>>? srcRegionCodes;

  /// List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the srcSecureTag are INEFFECTIVE, and there is no srcIpRange, this rule will be ignored. Maximum number of source tag values allowed is 256.
  final pulumi.Input<List<FirewallPolicyRuleSecureTag>>? srcSecureTags;

  /// Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic source.
  final pulumi.Input<List<String>>? srcThreatIntelligences;

  /// Creates a new [FirewallPolicyRuleMatcher].
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
  FirewallPolicyRuleMatcher({
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
            List<FirewallPolicyRuleMatcherLayer4Config>,
            List<Map<String, dynamic>>
          >(
            layer4Configs,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallPolicyRuleMatcherLayer4Config,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'srcAddressGroups': ?srcAddressGroups,
      'srcFqdns': ?srcFqdns,
      'srcIpRanges': ?srcIpRanges,
      'srcRegionCodes': ?srcRegionCodes,
      'srcSecureTags':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallPolicyRuleSecureTag>,
            List<Map<String, dynamic>>
          >(
            srcSecureTags,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallPolicyRuleSecureTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'srcThreatIntelligences': ?srcThreatIntelligences,
    };
  }

  factory FirewallPolicyRuleMatcher.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleMatcher(
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
          pulumi.Input.decodeList<FirewallPolicyRuleMatcherLayer4Config>(
            guardedValue,
            (value) => FirewallPolicyRuleMatcherLayer4Config.fromMap(
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
          pulumi.Input.decodeList<FirewallPolicyRuleSecureTag>(
            guardedValue,
            (value) => FirewallPolicyRuleSecureTag.fromMap(
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
