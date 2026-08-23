// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_zone_detail.dart';

class SkuLocationInfo {
  /// The extended locations.
  final pulumi.Input<List<String>>? extendedLocations;
  /// The location.
  final pulumi.Input<String> location;
  /// The type.
  final pulumi.Input<String>? type;
  /// The zone details.
  final pulumi.Input<List<SkuZoneDetail>>? zoneDetails;
  /// The zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [SkuLocationInfo].
  /// [extendedLocations] The extended locations.
  /// [location] The location.
  /// [type] The type.
  /// [zoneDetails] The zone details.
  /// [zones] The zones.
  const SkuLocationInfo({
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
      'zoneDetails': ?pulumi.Input.mapOptionalInputValue<List<SkuZoneDetail>, List<Map<String, dynamic>>>(zoneDetails, (value) => pulumi.Input.encodeList<SkuZoneDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zones': ?zones,
    };
  }

  factory SkuLocationInfo.fromMap(Map<String, dynamic> map) {
    return SkuLocationInfo(
      extendedLocations: (() { final guardedValue = map['extendedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneDetails: (() { final guardedValue = map['zoneDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SkuZoneDetail>(guardedValue, (value) => SkuZoneDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
