// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability.dart';
import 'sku_capacity.dart';

/// Description of a SKU for a scalable resource.
class SkuDescription {
  /// Capabilities of the SKU, e.g., is traffic manager enabled?
  final List<Capability>? capabilities;
  /// Current number of instances assigned to the resource.
  final int? capacity;
  /// Family code of the resource SKU.
  final String? family;
  /// Locations of the SKU.
  final List<String>? locations;
  /// Name of the resource SKU.
  final String? name;
  /// Size specifier of the resource SKU.
  final String? size;
  /// Min, max, and default scale values of the SKU.
  final SkuCapacity? skuCapacity;
  /// Service tier of the resource SKU.
  final String? tier;

  /// Creates a new [SkuDescription].
  /// [capabilities] Capabilities of the SKU, e.g., is traffic manager enabled?
  /// [capacity] Current number of instances assigned to the resource.
  /// [family] Family code of the resource SKU.
  /// [locations] Locations of the SKU.
  /// [name] Name of the resource SKU.
  /// [size] Size specifier of the resource SKU.
  /// [skuCapacity] Min, max, and default scale values of the SKU.
  /// [tier] Service tier of the resource SKU.
  SkuDescription({
    this.capabilities,
    this.capacity,
    this.family,
    this.locations,
    this.name,
    this.size,
    this.skuCapacity,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities == null ? null : pulumi.Input.encodeList<Capability, Map<String, dynamic>>(capabilities!, (value) => value.toMap()),
      'capacity': ?capacity,
      'family': ?family,
      'locations': ?locations,
      'name': ?name,
      'size': ?size,
      'skuCapacity': ?skuCapacity == null ? null : skuCapacity!.toMap(),
      'tier': ?tier,
    };
  }

  factory SkuDescription.fromMap(Map<String, dynamic> map) {
    return SkuDescription(
      capabilities: map['capabilities'] == null ? null : pulumi.Input.decodeList<Capability>(map['capabilities'], (value) => Capability.fromMap((value as Map).cast<String, dynamic>())),
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      skuCapacity: map['skuCapacity'] == null ? null : SkuCapacity.fromMap((map['skuCapacity'] as Map).cast<String, dynamic>()),
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

