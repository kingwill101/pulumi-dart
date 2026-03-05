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
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

