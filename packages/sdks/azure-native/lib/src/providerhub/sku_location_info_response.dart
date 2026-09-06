// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_zone_detail_response.dart';

class SkuLocationInfoResponse {
  /// The extended locations.
  final pulumi.Input<List<String>?>? extendedLocations;
  /// The location.
  final pulumi.Input<String> location;
  /// The type.
  final pulumi.Input<String?>? type;
  /// The zone details.
  final pulumi.Input<List<SkuZoneDetailResponse>?>? zoneDetails;
  /// The zones.
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [SkuLocationInfoResponse].
  /// [extendedLocations] The extended locations.
  /// [location] The location.
  /// [type] The type.
  /// [zoneDetails] The zone details.
  /// [zones] The zones.
  const SkuLocationInfoResponse({
    this.extendedLocations,
    required this.location,
    this.type,
    this.zoneDetails,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocations': ?extendedLocations,
      'location': location,
      'type': ?type,
      'zoneDetails': ?pulumi.Input.mapOptionalInputValue<List<SkuZoneDetailResponse>, List<Map<String, dynamic>>>(zoneDetails, (value) => pulumi.Input.encodeList<SkuZoneDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zones': ?zones,
    };
  }

  factory SkuLocationInfoResponse.fromMap(Map<String, dynamic> map) {
    return SkuLocationInfoResponse(
      extendedLocations: (() { final guardedValue = map['extendedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneDetails: (() { final guardedValue = map['zoneDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SkuZoneDetailResponse>(guardedValue, (value) => SkuZoneDetailResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
