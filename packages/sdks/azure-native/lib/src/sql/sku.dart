// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An ARM Resource SKU.
class Sku {
  /// Capacity of the particular SKU.
  final pulumi.Input<int>? capacity;
  /// If the service has different generations of hardware, for the same SKU, then that can be captured here.
  final pulumi.Input<String>? family;
  /// The name of the SKU, typically, a letter + Number code, e.g. P3.
  final pulumi.Input<String> name;
  /// Size of the particular SKU
  final pulumi.Input<String>? size;
  /// The tier or edition of the particular SKU, e.g. Basic, Premium.
  final pulumi.Input<String>? tier;

  /// Creates a new [Sku].
  /// [capacity] Capacity of the particular SKU.
  /// [family] If the service has different generations of hardware, for the same SKU, then that can be captured here.
  /// [name] The name of the SKU, typically, a letter + Number code, e.g. P3.
  /// [size] Size of the particular SKU
  /// [tier] The tier or edition of the particular SKU, e.g. Basic, Premium.
  const Sku({
    this.capacity,
    this.family,
    required this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'name': name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

