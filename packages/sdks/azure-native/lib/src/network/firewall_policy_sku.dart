// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of Firewall policy.
class FirewallPolicySku {
  /// Tier of Firewall Policy.
  final pulumi.Input<String>? tier;

  /// Creates a new [FirewallPolicySku].
  /// [tier] Tier of Firewall Policy.
  FirewallPolicySku({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory FirewallPolicySku.fromMap(Map<String, dynamic> map) {
    return FirewallPolicySku(
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

