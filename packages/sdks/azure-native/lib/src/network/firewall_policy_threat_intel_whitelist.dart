// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ThreatIntel Whitelist for Firewall Policy.
class FirewallPolicyThreatIntelWhitelist {
  /// List of FQDNs for the ThreatIntel Whitelist.
  final pulumi.Input<List<String>>? fqdns;
  /// List of IP addresses for the ThreatIntel Whitelist.
  final pulumi.Input<List<String>>? ipAddresses;

  /// Creates a new [FirewallPolicyThreatIntelWhitelist].
  /// [fqdns] List of FQDNs for the ThreatIntel Whitelist.
  /// [ipAddresses] List of IP addresses for the ThreatIntel Whitelist.
  const FirewallPolicyThreatIntelWhitelist({
    this.fqdns,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdns': ?fqdns,
      'ipAddresses': ?ipAddresses,
    };
  }

  factory FirewallPolicyThreatIntelWhitelist.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyThreatIntelWhitelist(
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

