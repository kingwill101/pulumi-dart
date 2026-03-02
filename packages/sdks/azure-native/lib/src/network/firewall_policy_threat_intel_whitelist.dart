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
  FirewallPolicyThreatIntelWhitelist({
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
      fqdns: map['fqdns'] == null ? null : ((map['fqdns']! as List).cast<String>()).input(),
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses']! as List).cast<String>()).input(),
    );
  }
}

