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
      'zoneDetails': ?pulumi.Input.mapOptionalInputValue<List<SkuZoneDetail>, List<Map<String, dynamic>>>(zoneDetails, (value) => pulumi.Input.encodeList<SkuZoneDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zones': ?zones,
    };
  }

  factory SkuLocationInfo.fromMap(Map<String, dynamic> map) {
    return SkuLocationInfo(
      extendedLocations: map['extendedLocations'] == null ? null : ((map['extendedLocations']! as List).cast<String>()).input(),
      location: (map['location'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      zoneDetails: map['zoneDetails'] == null ? null : (pulumi.Input.decodeList<SkuZoneDetail>(map['zoneDetails']!, (value) => SkuZoneDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

