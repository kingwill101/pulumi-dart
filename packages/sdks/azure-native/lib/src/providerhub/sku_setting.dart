// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_capability.dart';
import 'sku_cost.dart';
import 'sku_location_info.dart';
import 'sku_setting_capacity.dart';

class SkuSetting {
  /// The capabilities.
  final pulumi.Input<List<SkuCapability>>? capabilities;
  /// The capacity.
  final pulumi.Input<SkuSettingCapacity>? capacity;
  /// The costs.
  final pulumi.Input<List<SkuCost>>? costs;
  /// The family.
  final pulumi.Input<String>? family;
  /// The kind.
  final pulumi.Input<String>? kind;
  /// The location info.
  final pulumi.Input<List<SkuLocationInfo>>? locationInfo;
  /// The locations.
  final pulumi.Input<List<String>>? locations;
  /// The name.
  final pulumi.Input<String> name;
  /// The required features.
  final pulumi.Input<List<String>>? requiredFeatures;
  /// The required quota ids.
  final pulumi.Input<List<String>>? requiredQuotaIds;
  /// The size.
  final pulumi.Input<String>? size;
  /// The tier.
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuSetting].
  /// [capabilities] The capabilities.
  /// [capacity] The capacity.
  /// [costs] The costs.
  /// [family] The family.
  /// [kind] The kind.
  /// [locationInfo] The location info.
  /// [locations] The locations.
  /// [name] The name.
  /// [requiredFeatures] The required features.
  /// [requiredQuotaIds] The required quota ids.
  /// [size] The size.
  /// [tier] The tier.
  SkuSetting({
    this.capabilities,
    this.capacity,
    this.costs,
    this.family,
    this.kind,
    this.locationInfo,
    this.locations,
    required this.name,
    this.requiredFeatures,
    this.requiredQuotaIds,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?pulumi.Input.mapOptionalInputValue<List<SkuCapability>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<SkuCapability, Map<String, dynamic>>(value, (value) => value.toMap())),
      'capacity': ?pulumi.Input.mapOptionalInputValue<SkuSettingCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'costs': ?pulumi.Input.mapOptionalInputValue<List<SkuCost>, List<Map<String, dynamic>>>(costs, (value) => pulumi.Input.encodeList<SkuCost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'family': ?family,
      'kind': ?kind,
      'locationInfo': ?pulumi.Input.mapOptionalInputValue<List<SkuLocationInfo>, List<Map<String, dynamic>>>(locationInfo, (value) => pulumi.Input.encodeList<SkuLocationInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locations': ?locations,
      'name': name,
      'requiredFeatures': ?requiredFeatures,
      'requiredQuotaIds': ?requiredQuotaIds,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory SkuSetting.fromMap(Map<String, dynamic> map) {
    return SkuSetting(
      capabilities: map['capabilities'] == null ? null : (pulumi.Input.decodeList<SkuCapability>(map['capabilities'], (value) => SkuCapability.fromMap((value as Map).cast<String, dynamic>()))).input(),
      capacity: map['capacity'] == null ? null : (SkuSettingCapacity.fromMap((map['capacity'] as Map).cast<String, dynamic>())).input(),
      costs: map['costs'] == null ? null : (pulumi.Input.decodeList<SkuCost>(map['costs'], (value) => SkuCost.fromMap((value as Map).cast<String, dynamic>()))).input(),
      family: map['family'] == null ? null : (map['family'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      locationInfo: map['locationInfo'] == null ? null : (pulumi.Input.decodeList<SkuLocationInfo>(map['locationInfo'], (value) => SkuLocationInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      locations: map['locations'] == null ? null : ((map['locations'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      requiredFeatures: map['requiredFeatures'] == null ? null : ((map['requiredFeatures'] as List).cast<String>()).input(),
      requiredQuotaIds: map['requiredQuotaIds'] == null ? null : ((map['requiredQuotaIds'] as List).cast<String>()).input(),
      size: map['size'] == null ? null : (map['size'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

