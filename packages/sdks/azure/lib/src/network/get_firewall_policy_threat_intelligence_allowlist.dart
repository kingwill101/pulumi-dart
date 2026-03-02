// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallPolicyThreatIntelligenceAllowlist {
  final pulumi.Input<List<String>> fqdns;
  final pulumi.Input<List<String>> ipAddresses;

  /// Creates a new [GetFirewallPolicyThreatIntelligenceAllowlist].
  /// [fqdns] Required.
  /// [ipAddresses] Required.
  GetFirewallPolicyThreatIntelligenceAllowlist({
    required this.fqdns,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdns': fqdns,
      'ipAddresses': ipAddresses,
    };
  }

  factory GetFirewallPolicyThreatIntelligenceAllowlist.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyThreatIntelligenceAllowlist(
      fqdns: ((map['fqdns'] as List).cast<String>()).input(),
      ipAddresses: ((map['ipAddresses'] as List).cast<String>()).input(),
    );
  }
}

