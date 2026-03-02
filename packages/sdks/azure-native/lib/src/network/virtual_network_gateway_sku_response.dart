// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VirtualNetworkGatewaySku details.
class VirtualNetworkGatewaySkuResponse {
  /// The capacity.
  final pulumi.Input<int> capacity;
  /// Gateway SKU name.
  final pulumi.Input<String>? name;
  /// Gateway SKU tier.
  final pulumi.Input<String>? tier;

  /// Creates a new [VirtualNetworkGatewaySkuResponse].
  /// [capacity] The capacity.
  /// [name] Gateway SKU name.
  /// [tier] Gateway SKU tier.
  VirtualNetworkGatewaySkuResponse({
    required this.capacity,
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory VirtualNetworkGatewaySkuResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewaySkuResponse(
      capacity: (map['capacity'] as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

