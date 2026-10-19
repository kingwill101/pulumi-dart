// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone.dart';

/// Result data returned by getZones.
class GetZonesResult {
  /// The ID of this resource.
  final String? id;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;
  final List<GetZonesZone>? zones;

  /// Creates a new [GetZonesResult].
  /// [id] The ID of this resource.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  /// [zones] Optional.
  const GetZonesResult({
    this.id,
    this.withSelector,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'withSelector': ?withSelector,
      'zones': ?(() { final guardedValue = zones; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZonesZone, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZonesZone>(guardedValue, (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
