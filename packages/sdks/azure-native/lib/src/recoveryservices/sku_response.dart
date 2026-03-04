// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifies the unique system identifier for each Azure resource.
class SkuResponse {
  /// The sku capacity
  final pulumi.Input<String>? capacity;

  /// The sku family
  final pulumi.Input<String>? family;

  /// Name of SKU is RS0 (Recovery Services 0th version) and the tier is standard tier. They do not have affect on backend storage redundancy or any other vault settings. To manage storage redundancy, use the backupstorageconfig
  final pulumi.Input<String> name;

  /// The sku size
  final pulumi.Input<String>? size;

  /// The Sku tier.
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuResponse].
  /// [capacity] The sku capacity
  /// [family] The sku family
  /// [name] Name of SKU is RS0 (Recovery Services 0th version) and the tier is standard tier. They do not have affect on backend storage redundancy or any other vault settings. To manage storage redundancy, use the backupstorageconfig
  /// [size] The sku size
  /// [tier] The Sku tier.
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
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      family: (() {
        final guardedValue = map['family'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tier: (() {
        final guardedValue = map['tier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
