// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewaySkus {
  /// The Capacity of the SKU in use for this Application Gateway.
  final int capacity;
  /// The name of this Application Gateway.
  final String name;
  /// The Tier of the SKU in use for this Application Gateway.
  final String tier;

  /// Creates a new [GetApplicationGatewaySkus].
  /// [capacity] The Capacity of the SKU in use for this Application Gateway.
  /// [name] The name of this Application Gateway.
  /// [tier] The Tier of the SKU in use for this Application Gateway.
  GetApplicationGatewaySkus({
    required this.capacity,
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'name': name,
      'tier': tier,
    };
  }

  factory GetApplicationGatewaySkus.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewaySkus(
      capacity: map['capacity'] as int,
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

