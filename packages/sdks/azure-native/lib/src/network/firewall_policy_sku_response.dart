// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of Firewall policy.
class FirewallPolicySkuResponse {
  /// Tier of Firewall Policy.
  final pulumi.Input<String>? tier;

  /// Creates a new [FirewallPolicySkuResponse].
  /// [tier] Tier of Firewall Policy.
  FirewallPolicySkuResponse({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory FirewallPolicySkuResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicySkuResponse(
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

