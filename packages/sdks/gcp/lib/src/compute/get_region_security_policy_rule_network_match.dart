// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_rule_network_match_user_defined_field.dart';

class GetRegionSecurityPolicyRuleNetworkMatch {
  /// Destination IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  final pulumi.Input<List<String>> destIpRanges;
  /// Destination port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  final pulumi.Input<List<String>> destPorts;
  /// IPv4 protocol / IPv6 next header (after extension headers). Each element can be an 8-bit unsigned decimal number (e.g. "6"), range (e.g. "253-254"), or one of the following protocol names: "tcp", "udp", "icmp", "esp", "ah", "ipip", or "sctp".
  final pulumi.Input<List<String>> ipProtocols;
  /// BGP Autonomous System Number associated with the source IP address.
  final pulumi.Input<List<int>> srcAsns;
  /// Source IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  final pulumi.Input<List<String>> srcIpRanges;
  /// Source port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  final pulumi.Input<List<String>> srcPorts;
  /// Two-letter ISO 3166-1 alpha-2 country code associated with the source IP address.
  final pulumi.Input<List<String>> srcRegionCodes;
  /// User-defined fields. Each element names a defined field and lists the matching values for that field.
  final pulumi.Input<List<GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField>> userDefinedFields;

  /// Creates a new [GetRegionSecurityPolicyRuleNetworkMatch].
  /// [destIpRanges] Destination IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  /// [destPorts] Destination port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  /// [ipProtocols] IPv4 protocol / IPv6 next header (after extension headers). Each element can be an 8-bit unsigned decimal number (e.g. "6"), range (e.g. "253-254"), or one of the following protocol names: "tcp", "udp", "icmp", "esp", "ah", "ipip", or "sctp".
  /// [srcAsns] BGP Autonomous System Number associated with the source IP address.
  /// [srcIpRanges] Source IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  /// [srcPorts] Source port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  /// [srcRegionCodes] Two-letter ISO 3166-1 alpha-2 country code associated with the source IP address.
  /// [userDefinedFields] User-defined fields. Each element names a defined field and lists the matching values for that field.
  GetRegionSecurityPolicyRuleNetworkMatch({
    required this.destIpRanges,
    required this.destPorts,
    required this.ipProtocols,
    required this.srcAsns,
    required this.srcIpRanges,
    required this.srcPorts,
    required this.srcRegionCodes,
    required this.userDefinedFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destIpRanges': destIpRanges,
      'destPorts': destPorts,
      'ipProtocols': ipProtocols,
      'srcAsns': srcAsns,
      'srcIpRanges': srcIpRanges,
      'srcPorts': srcPorts,
      'srcRegionCodes': srcRegionCodes,
      'userDefinedFields': pulumi.Input.mapInputValue<List<GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField>, List<Map<String, dynamic>>>(userDefinedFields, (value) => pulumi.Input.encodeList<GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionSecurityPolicyRuleNetworkMatch.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRuleNetworkMatch(
      destIpRanges: ((map['destIpRanges'] as List).cast<String>()).input(),
      destPorts: ((map['destPorts'] as List).cast<String>()).input(),
      ipProtocols: ((map['ipProtocols'] as List).cast<String>()).input(),
      srcAsns: ((map['srcAsns'] as List).cast<int>()).input(),
      srcIpRanges: ((map['srcIpRanges'] as List).cast<String>()).input(),
      srcPorts: ((map['srcPorts'] as List).cast<String>()).input(),
      srcRegionCodes: ((map['srcRegionCodes'] as List).cast<String>()).input(),
      userDefinedFields: (pulumi.Input.decodeList<GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField>(map['userDefinedFields'], (value) => GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

