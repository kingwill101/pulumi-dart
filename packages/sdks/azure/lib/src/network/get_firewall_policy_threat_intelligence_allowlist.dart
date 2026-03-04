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
    return <String, dynamic>{'fqdns': fqdns, 'ipAddresses': ipAddresses};
  }

  factory GetFirewallPolicyThreatIntelligenceAllowlist.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFirewallPolicyThreatIntelligenceAllowlist(
      fqdns: pulumi.Input.fromValue((map['fqdns'] as List).cast<String>()),
      ipAddresses: pulumi.Input.fromValue(
        (map['ipAddresses'] as List).cast<String>(),
      ),
    );
  }
}
