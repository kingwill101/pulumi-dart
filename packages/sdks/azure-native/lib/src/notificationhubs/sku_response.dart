// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Sku description for a namespace
class SkuResponse {
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

  /// Creates a new [SkuResponse].
  /// [capacity] Gets or sets the capacity of the resource
  /// [family] Gets or sets the Sku Family
  /// [name] Namespace SKU name.
  /// [size] Gets or sets the Sku size
  /// [tier] Gets or sets the tier of particular sku
  SkuResponse({
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

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      family: map['family'] == null ? null : (map['family'] as String).input(),
      name: (map['name'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

