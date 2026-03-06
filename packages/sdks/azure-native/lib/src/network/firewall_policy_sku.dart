// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of Firewall policy.
class FirewallPolicySku {
  /// Tier of Firewall Policy.
  final pulumi.Input<String>? tier;

  /// Creates a new [FirewallPolicySku].
  /// [tier] Tier of Firewall Policy.
  const FirewallPolicySku({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory FirewallPolicySku.fromMap(Map<String, dynamic> map) {
    return FirewallPolicySku(
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

