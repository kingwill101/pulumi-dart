// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Sku description for a namespace
class Sku {
  /// Gets or sets the capacity of the resource
  final pulumi.Input<int>? capacity;
  /// Gets or sets the Sku Family
  final pulumi.Input<String>? family;
  /// Namespace SKU name.
  final pulumi.Input<String> name;
  /// Gets or sets the Sku size
  final pulumi.Input<String>? size;
  /// Gets or sets the tier of particular sku
  final pulumi.Input<String>? tier;

  /// Creates a new [Sku].
  /// [capacity] Gets or sets the capacity of the resource
  /// [family] Gets or sets the Sku Family
  /// [name] Namespace SKU name.
  /// [size] Gets or sets the Sku size
  /// [tier] Gets or sets the tier of particular sku
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

