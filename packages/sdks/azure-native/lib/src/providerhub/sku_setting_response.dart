// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_capability_response.dart';
import 'sku_cost_response.dart';
import 'sku_location_info_response.dart';
import 'sku_setting_capacity_response.dart';

class SkuSettingResponse {
  /// The capabilities.
  final pulumi.Input<List<SkuCapabilityResponse>>? capabilities;
  /// The capacity.
  final pulumi.Input<SkuSettingCapacityResponse>? capacity;
  /// The costs.
  final pulumi.Input<List<SkuCostResponse>>? costs;
  /// The family.
  final pulumi.Input<String>? family;
  /// The kind.
  final pulumi.Input<String>? kind;
  /// The location info.
  final pulumi.Input<List<SkuLocationInfoResponse>>? locationInfo;
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

  /// Creates a new [SkuSettingResponse].
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
  SkuSettingResponse({
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
      'capabilities': ?pulumi.Input.mapOptionalInputValue<List<SkuCapabilityResponse>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<SkuCapabilityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'capacity': ?pulumi.Input.mapOptionalInputValue<SkuSettingCapacityResponse, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'costs': ?pulumi.Input.mapOptionalInputValue<List<SkuCostResponse>, List<Map<String, dynamic>>>(costs, (value) => pulumi.Input.encodeList<SkuCostResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'family': ?family,
      'kind': ?kind,
      'locationInfo': ?pulumi.Input.mapOptionalInputValue<List<SkuLocationInfoResponse>, List<Map<String, dynamic>>>(locationInfo, (value) => pulumi.Input.encodeList<SkuLocationInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locations': ?locations,
      'name': name,
      'requiredFeatures': ?requiredFeatures,
      'requiredQuotaIds': ?requiredQuotaIds,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory SkuSettingResponse.fromMap(Map<String, dynamic> map) {
    return SkuSettingResponse(
      capabilities: map['capabilities'] == null ? null : (pulumi.Input.decodeList<SkuCapabilityResponse>(map['capabilities']!, (value) => SkuCapabilityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      capacity: map['capacity'] == null ? null : (SkuSettingCapacityResponse.fromMap((map['capacity']! as Map).cast<String, dynamic>())).input(),
      costs: map['costs'] == null ? null : (pulumi.Input.decodeList<SkuCostResponse>(map['costs']!, (value) => SkuCostResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      family: map['family'] == null ? null : (map['family']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      locationInfo: map['locationInfo'] == null ? null : (pulumi.Input.decodeList<SkuLocationInfoResponse>(map['locationInfo']!, (value) => SkuLocationInfoResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      locations: map['locations'] == null ? null : ((map['locations']! as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      requiredFeatures: map['requiredFeatures'] == null ? null : ((map['requiredFeatures']! as List).cast<String>()).input(),
      requiredQuotaIds: map['requiredQuotaIds'] == null ? null : ((map['requiredQuotaIds']! as List).cast<String>()).input(),
      size: map['size'] == null ? null : (map['size']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

