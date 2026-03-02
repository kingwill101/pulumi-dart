// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An ARM Resource SKU.
class SkuResponse {
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

  /// Creates a new [SkuResponse].
  /// [capacity] Capacity of the particular SKU.
  /// [family] If the service has different generations of hardware, for the same SKU, then that can be captured here.
  /// [name] The name of the SKU, typically, a letter + Number code, e.g. P3.
  /// [size] Size of the particular SKU
  /// [tier] The tier or edition of the particular SKU, e.g. Basic, Premium.
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

