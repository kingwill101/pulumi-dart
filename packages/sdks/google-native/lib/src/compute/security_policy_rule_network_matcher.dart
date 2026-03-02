// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_network_matcher_user_defined_field_match.dart';

/// Represents a match condition that incoming network traffic is evaluated against.
class SecurityPolicyRuleNetworkMatcher {
  /// Destination IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  final pulumi.Input<List<String>>? destIpRanges;
  /// Destination port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  final pulumi.Input<List<String>>? destPorts;
  /// IPv4 protocol / IPv6 next header (after extension headers). Each element can be an 8-bit unsigned decimal number (e.g. "6"), range (e.g. "253-254"), or one of the following protocol names: "tcp", "udp", "icmp", "esp", "ah", "ipip", or "sctp".
  final pulumi.Input<List<String>>? ipProtocols;
  /// BGP Autonomous System Number associated with the source IP address.
  final pulumi.Input<List<int>>? srcAsns;
  /// Source IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  final pulumi.Input<List<String>>? srcIpRanges;
  /// Source port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  final pulumi.Input<List<String>>? srcPorts;
  /// Two-letter ISO 3166-1 alpha-2 country code associated with the source IP address.
  final pulumi.Input<List<String>>? srcRegionCodes;
  /// User-defined fields. Each element names a defined field and lists the matching values for that field.
  final pulumi.Input<List<SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch>>? userDefinedFields;

  /// Creates a new [SecurityPolicyRuleNetworkMatcher].
  /// [destIpRanges] Destination IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  /// [destPorts] Destination port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  /// [ipProtocols] IPv4 protocol / IPv6 next header (after extension headers). Each element can be an 8-bit unsigned decimal number (e.g. "6"), range (e.g. "253-254"), or one of the following protocol names: "tcp", "udp", "icmp", "esp", "ah", "ipip", or "sctp".
  /// [srcAsns] BGP Autonomous System Number associated with the source IP address.
  /// [srcIpRanges] Source IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  /// [srcPorts] Source port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  /// [srcRegionCodes] Two-letter ISO 3166-1 alpha-2 country code associated with the source IP address.
  /// [userDefinedFields] User-defined fields. Each element names a defined field and lists the matching values for that field.
  SecurityPolicyRuleNetworkMatcher({
    this.destIpRanges,
    this.destPorts,
    this.ipProtocols,
    this.srcAsns,
    this.srcIpRanges,
    this.srcPorts,
    this.srcRegionCodes,
    this.userDefinedFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destIpRanges': ?destIpRanges,
      'destPorts': ?destPorts,
      'ipProtocols': ?ipProtocols,
      'srcAsns': ?srcAsns,
      'srcIpRanges': ?srcIpRanges,
      'srcPorts': ?srcPorts,
      'srcRegionCodes': ?srcRegionCodes,
      'userDefinedFields': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch>, List<Map<String, dynamic>>>(userDefinedFields, (value) => pulumi.Input.encodeList<SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyRuleNetworkMatcher.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleNetworkMatcher(
      destIpRanges: map['destIpRanges'] == null ? null : ((map['destIpRanges'] as List).cast<String>()).input(),
      destPorts: map['destPorts'] == null ? null : ((map['destPorts'] as List).cast<String>()).input(),
      ipProtocols: map['ipProtocols'] == null ? null : ((map['ipProtocols'] as List).cast<String>()).input(),
      srcAsns: map['srcAsns'] == null ? null : ((map['srcAsns'] as List).cast<int>()).input(),
      srcIpRanges: map['srcIpRanges'] == null ? null : ((map['srcIpRanges'] as List).cast<String>()).input(),
      srcPorts: map['srcPorts'] == null ? null : ((map['srcPorts'] as List).cast<String>()).input(),
      srcRegionCodes: map['srcRegionCodes'] == null ? null : ((map['srcRegionCodes'] as List).cast<String>()).input(),
      userDefinedFields: map['userDefinedFields'] == null ? null : (pulumi.Input.decodeList<SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch>(map['userDefinedFields'], (value) => SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

