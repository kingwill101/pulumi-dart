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
  const FirewallPolicyThreatIntelligenceAllowlist({
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
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
