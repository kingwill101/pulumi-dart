// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_rule_network_match_user_defined_field.dart';

class RegionSecurityPolicyRuleNetworkMatch {
  /// Destination IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  final List<String>? destIpRanges;
  /// Destination port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  final List<String>? destPorts;
  /// IPv4 protocol / IPv6 next header (after extension headers). Each element can be an 8-bit unsigned decimal number (e.g. "6"), range (e.g. "253-254"), or one of the following protocol names: "tcp", "udp", "icmp", "esp", "ah", "ipip", or "sctp".
  final List<String>? ipProtocols;
  /// BGP Autonomous System Number associated with the source IP address.
  final List<int>? srcAsns;
  /// Source IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  final List<String>? srcIpRanges;
  /// Source port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  final List<String>? srcPorts;
  /// Two-letter ISO 3166-1 alpha-2 country code associated with the source IP address.
  final List<String>? srcRegionCodes;
  /// User-defined fields. Each element names a defined field and lists the matching values for that field.
  /// Structure is documented below.
  final List<RegionSecurityPolicyRuleNetworkMatchUserDefinedField>? userDefinedFields;

  /// Creates a new [RegionSecurityPolicyRuleNetworkMatch].
  /// [destIpRanges] Destination IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  /// [destPorts] Destination port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  /// [ipProtocols] IPv4 protocol / IPv6 next header (after extension headers). Each element can be an 8-bit unsigned decimal number (e.g. "6"), range (e.g. "253-254"), or one of the following protocol names: "tcp", "udp", "icmp", "esp", "ah", "ipip", or "sctp".
  /// [srcAsns] BGP Autonomous System Number associated with the source IP address.
  /// [srcIpRanges] Source IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  /// [srcPorts] Source port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  /// [srcRegionCodes] Two-letter ISO 3166-1 alpha-2 country code associated with the source IP address.
  /// [userDefinedFields] User-defined fields. Each element names a defined field and lists the matching values for that field.
  RegionSecurityPolicyRuleNetworkMatch({
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
      'userDefinedFields': ?userDefinedFields == null ? null : pulumi.Input.encodeList<RegionSecurityPolicyRuleNetworkMatchUserDefinedField, Map<String, dynamic>>(userDefinedFields!, (value) => value.toMap()),
    };
  }

  factory RegionSecurityPolicyRuleNetworkMatch.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyRuleNetworkMatch(
      destIpRanges: map['destIpRanges'] == null ? null : (map['destIpRanges'] as List).cast<String>(),
      destPorts: map['destPorts'] == null ? null : (map['destPorts'] as List).cast<String>(),
      ipProtocols: map['ipProtocols'] == null ? null : (map['ipProtocols'] as List).cast<String>(),
      srcAsns: map['srcAsns'] == null ? null : (map['srcAsns'] as List).cast<int>(),
      srcIpRanges: map['srcIpRanges'] == null ? null : (map['srcIpRanges'] as List).cast<String>(),
      srcPorts: map['srcPorts'] == null ? null : (map['srcPorts'] as List).cast<String>(),
      srcRegionCodes: map['srcRegionCodes'] == null ? null : (map['srcRegionCodes'] as List).cast<String>(),
      userDefinedFields: map['userDefinedFields'] == null ? null : pulumi.Input.decodeList<RegionSecurityPolicyRuleNetworkMatchUserDefinedField>(map['userDefinedFields'], (value) => RegionSecurityPolicyRuleNetworkMatchUserDefinedField.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

