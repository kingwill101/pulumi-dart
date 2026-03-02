// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_response.dart';
import 'sku_capacity_response.dart';

/// Description of a SKU for a scalable resource.
class SkuDescriptionResponse {
  /// Capabilities of the SKU, e.g., is traffic manager enabled?
  final pulumi.Input<List<CapabilityResponse>>? capabilities;
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
  final pulumi.Input<SkuCapacityResponse>? skuCapacity;
  /// Service tier of the resource SKU.
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuDescriptionResponse].
  /// [capabilities] Capabilities of the SKU, e.g., is traffic manager enabled?
  /// [capacity] Current number of instances assigned to the resource.
  /// [family] Family code of the resource SKU.
  /// [locations] Locations of the SKU.
  /// [name] Name of the resource SKU.
  /// [size] Size specifier of the resource SKU.
  /// [skuCapacity] Min, max, and default scale values of the SKU.
  /// [tier] Service tier of the resource SKU.
  SkuDescriptionResponse({
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
      'capabilities': ?pulumi.Input.mapOptionalInputValue<List<CapabilityResponse>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<CapabilityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'capacity': ?capacity,
      'family': ?family,
      'locations': ?locations,
      'name': ?name,
      'size': ?size,
      'skuCapacity': ?pulumi.Input.mapOptionalInputValue<SkuCapacityResponse, Map<String, dynamic>>(skuCapacity, (value) => value.toMap()),
      'tier': ?tier,
    };
  }

  factory SkuDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return SkuDescriptionResponse(
      capabilities: map['capabilities'] == null ? null : (pulumi.Input.decodeList<CapabilityResponse>(map['capabilities']!, (value) => CapabilityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      family: map['family'] == null ? null : (map['family']! as String).input(),
      locations: map['locations'] == null ? null : ((map['locations']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as String).input(),
      skuCapacity: map['skuCapacity'] == null ? null : (SkuCapacityResponse.fromMap((map['skuCapacity']! as Map).cast<String, dynamic>())).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

