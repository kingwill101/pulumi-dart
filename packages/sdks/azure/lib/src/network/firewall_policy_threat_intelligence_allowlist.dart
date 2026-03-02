// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyThreatIntelligenceAllowlist {
  /// A list of FQDNs that will be skipped for threat detection.
  final pulumi.Input<List<String>>? fqdns;
  /// A list of IP addresses or CIDR ranges that will be skipped for threat detection.
  final pulumi.Input<List<String>>? ipAddresses;

  /// Creates a new [FirewallPolicyThreatIntelligenceAllowlist].
  /// [fqdns] A list of FQDNs that will be skipped for threat detection.
  /// [ipAddresses] A list of IP addresses or CIDR ranges that will be skipped for threat detection.
  FirewallPolicyThreatIntelligenceAllowlist({
    this.fqdns,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdns': ?fqdns,
      'ipAddresses': ?ipAddresses,
    };
  }

  factory FirewallPolicyThreatIntelligenceAllowlist.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyThreatIntelligenceAllowlist(
      fqdns: map['fqdns'] == null ? null : ((map['fqdns'] as List).cast<String>()).input(),
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses'] as List).cast<String>()).input(),
    );
  }
}

