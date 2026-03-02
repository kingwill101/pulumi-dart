// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetElasticPoolSkus {
  /// The scale up/out capacity, representing server's compute units.
  final pulumi.Input<int> capacity;
  /// The `family` of hardware.
  final pulumi.Input<String> family;
  /// The name of the elastic pool.
  final pulumi.Input<String> name;
  /// The tier of the particular SKU.
  final pulumi.Input<String> tier;

  /// Creates a new [GetElasticPoolSkus].
  /// [capacity] The scale up/out capacity, representing server's compute units.
  /// [family] The `family` of hardware.
  /// [name] The name of the elastic pool.
  /// [tier] The tier of the particular SKU.
  GetElasticPoolSkus({
    required this.capacity,
    required this.family,
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'family': family,
      'name': name,
      'tier': tier,
    };
  }

  factory GetElasticPoolSkus.fromMap(Map<String, dynamic> map) {
    return GetElasticPoolSkus(
      capacity: (map['capacity'] as int).input(),
      family: (map['family'] as String).input(),
      name: (map['name'] as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

