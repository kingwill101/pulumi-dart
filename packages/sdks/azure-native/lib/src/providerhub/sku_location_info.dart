// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_zone_detail.dart';

class SkuLocationInfo {
  /// The extended locations.
  final List<String>? extendedLocations;
  /// The location.
  final String location;
  /// The type.
  final String? type;
  /// The zone details.
  final List<SkuZoneDetail>? zoneDetails;
  /// The zones.
  final List<String>? zones;

  /// Creates a new [SkuLocationInfo].
  /// [extendedLocations] The extended locations.
  /// [location] The location.
  /// [type] The type.
  /// [zoneDetails] The zone details.
  /// [zones] The zones.
  SkuLocationInfo({
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
      'zoneDetails': ?zoneDetails == null ? null : pulumi.Input.encodeList<SkuZoneDetail, Map<String, dynamic>>(zoneDetails!, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory SkuLocationInfo.fromMap(Map<String, dynamic> map) {
    return SkuLocationInfo(
      extendedLocations: map['extendedLocations'] == null ? null : (map['extendedLocations'] as List).cast<String>(),
      location: map['location'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      zoneDetails: map['zoneDetails'] == null ? null : pulumi.Input.decodeList<SkuZoneDetail>(map['zoneDetails'], (value) => SkuZoneDetail.fromMap((value as Map).cast<String, dynamic>())),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

