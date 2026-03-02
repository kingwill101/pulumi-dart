// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU for the resource.
class SkuResponse {
  /// The SKU capacity.
  final pulumi.Input<int>? capacity;
  /// The SKU family.
  final pulumi.Input<String>? family;
  /// The SKU model.
  final pulumi.Input<String>? model;
  /// The SKU name.
  final pulumi.Input<String>? name;
  /// The SKU size.
  final pulumi.Input<String>? size;
  /// The SKU tier.
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuResponse].
  /// [capacity] The SKU capacity.
  /// [family] The SKU family.
  /// [model] The SKU model.
  /// [name] The SKU name.
  /// [size] The SKU size.
  /// [tier] The SKU tier.
  SkuResponse({
    this.capacity,
    this.family,
    this.model,
    this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'model': ?model,
      'name': ?name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      family: map['family'] == null ? null : (map['family'] as String).input(),
      model: map['model'] == null ? null : (map['model'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

