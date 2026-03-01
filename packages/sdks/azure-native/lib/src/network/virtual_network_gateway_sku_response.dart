// ignore_for_file: unused_element, unnecessary_cast


/// VirtualNetworkGatewaySku details.
class VirtualNetworkGatewaySkuResponse {
  /// The capacity.
  final int capacity;
  /// Gateway SKU name.
  final String? name;
  /// Gateway SKU tier.
  final String? tier;

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
      capacity: map['capacity'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

