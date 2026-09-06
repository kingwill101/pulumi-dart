// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VirtualNetworkGatewaySku details.
class VirtualNetworkGatewaySku {
  /// Gateway SKU name.
  final pulumi.Input<dynamic>? name;
  /// Gateway SKU tier.
  final pulumi.Input<dynamic>? tier;

  /// Creates a new [VirtualNetworkGatewaySku].
  /// [name] Gateway SKU name.
  /// [tier] Gateway SKU tier.
  const VirtualNetworkGatewaySku({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory VirtualNetworkGatewaySku.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewaySku(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
