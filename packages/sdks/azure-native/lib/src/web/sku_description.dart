// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability.dart';
import 'sku_capacity.dart';

/// Description of a SKU for a scalable resource.
class SkuDescription {
  /// Capabilities of the SKU, e.g., is traffic manager enabled?
  final pulumi.Input<List<Capability>>? capabilities;
  /// Current number of instances assigned to the resource.
  final pulumi.Input<int>? capacity;
  /// Family code of the resource SKU.
  final pulumi.Input<String>? family;
  /// Locations of the SKU.
  final pulumi.Input<List<String>>? locations;
  /// Name of the resource SKU.
  final pulumi.Input<String>? name;
  /// Size specifier of the resource SKU.
  final pulumi.Input<String>? size;
  /// Min, max, and default scale values of the SKU.
  final pulumi.Input<SkuCapacity>? skuCapacity;
  /// Service tier of the resource SKU.
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuDescription].
  /// [capabilities] Capabilities of the SKU, e.g., is traffic manager enabled?
  /// [capacity] Current number of instances assigned to the resource.
  /// [family] Family code of the resource SKU.
  /// [locations] Locations of the SKU.
  /// [name] Name of the resource SKU.
  /// [size] Size specifier of the resource SKU.
  /// [skuCapacity] Min, max, and default scale values of the SKU.
  /// [tier] Service tier of the resource SKU.
  const SkuDescription({
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
      'capabilities': ?pulumi.Input.mapOptionalInputValue<List<Capability>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<Capability, Map<String, dynamic>>(value, (value) => value.toMap())),
      'capacity': ?capacity,
      'family': ?family,
      'locations': ?locations,
      'name': ?name,
      'size': ?size,
      'skuCapacity': ?pulumi.Input.mapOptionalInputValue<SkuCapacity, Map<String, dynamic>>(skuCapacity, (value) => value.toMap()),
      'tier': ?tier,
    };
  }

  factory SkuDescription.fromMap(Map<String, dynamic> map) {
    return SkuDescription(
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Capability>(guardedValue, (value) => Capability.fromMap((value as Map).cast<String, dynamic>()))); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuCapacity: (() { final guardedValue = map['skuCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuCapacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
