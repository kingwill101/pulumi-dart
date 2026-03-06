// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone.dart';

/// Result data returned by getZones.
class GetZonesResult {
  /// The ID of this resource.
  final String id;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;
  final List<GetZonesZone> zones;

  /// Creates a new [GetZonesResult].
  /// [id] The ID of this resource.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  /// [zones] Required.
  const GetZonesResult({
    required this.id,
    this.withSelector,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'withSelector': ?withSelector,
      'zones': pulumi.Input.encodeList<GetZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      id: map['id'] as String,
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: pulumi.Input.decodeList<GetZonesZone>(map['zones']!, (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

