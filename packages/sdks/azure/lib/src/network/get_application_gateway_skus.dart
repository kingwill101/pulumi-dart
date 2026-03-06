// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewaySkus {
  /// The Capacity of the SKU in use for this Application Gateway.
  final pulumi.Input<int> capacity;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// The Tier of the SKU in use for this Application Gateway.
  final pulumi.Input<String> tier;

  /// Creates a new [GetApplicationGatewaySkus].
  /// [capacity] The Capacity of the SKU in use for this Application Gateway.
  /// [name] The name of this Application Gateway.
  /// [tier] The Tier of the SKU in use for this Application Gateway.
  const GetApplicationGatewaySkus({
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
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}

