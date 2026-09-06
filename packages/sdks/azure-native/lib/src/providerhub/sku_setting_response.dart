// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_capability_response.dart';
import 'sku_cost_response.dart';
import 'sku_location_info_response.dart';
import 'sku_setting_capacity_response.dart';

class SkuSettingResponse {
  /// The capabilities.
  final pulumi.Input<List<SkuCapabilityResponse>?>? capabilities;
  /// The capacity.
  final pulumi.Input<SkuSettingCapacityResponse?>? capacity;
  /// The costs.
  final pulumi.Input<List<SkuCostResponse>?>? costs;
  /// The family.
  final pulumi.Input<String?>? family;
  /// The kind.
  final pulumi.Input<String?>? kind;
  /// The location info.
  final pulumi.Input<List<SkuLocationInfoResponse>?>? locationInfo;
  /// The locations.
  final pulumi.Input<List<String>?>? locations;
  /// The name.
  final pulumi.Input<String> name;
  /// The required features.
  final pulumi.Input<List<String>?>? requiredFeatures;
  /// The required quota ids.
  final pulumi.Input<List<String>?>? requiredQuotaIds;
  /// The size.
  final pulumi.Input<String?>? size;
  /// The tier.
  final pulumi.Input<String?>? tier;

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
  const SkuSettingResponse({
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
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SkuCapabilityResponse>(guardedValue, (value) => SkuCapabilityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuSettingCapacityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      costs: (() { final guardedValue = map['costs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SkuCostResponse>(guardedValue, (value) => SkuCostResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationInfo: (() { final guardedValue = map['locationInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SkuLocationInfoResponse>(guardedValue, (value) => SkuLocationInfoResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      requiredFeatures: (() { final guardedValue = map['requiredFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requiredQuotaIds: (() { final guardedValue = map['requiredQuotaIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
