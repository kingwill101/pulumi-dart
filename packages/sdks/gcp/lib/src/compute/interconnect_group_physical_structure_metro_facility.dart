// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_group_physical_structure_metro_facility_zone.dart';

class InterconnectGroupPhysicalStructureMetroFacility {
  /// (Output)
  /// The ID of this facility, as a numeric string like
  /// "5467". This is the third component of the location of Interconnects
  /// in this facility.
  final pulumi.Input<String>? facility;
  /// (Output)
  /// Zones used to explain this blocker in more detail.
  /// Zone names are "zone1" and/or "zone2".
  final pulumi.Input<List<InterconnectGroupPhysicalStructureMetroFacilityZone>>? zones;

  /// Creates a new [InterconnectGroupPhysicalStructureMetroFacility].
  /// [facility] (Output)
  /// [zones] (Output)
  InterconnectGroupPhysicalStructureMetroFacility({
    this.facility,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'facility': ?facility,
      'zones': ?pulumi.Input.mapOptionalInputValue<List<InterconnectGroupPhysicalStructureMetroFacilityZone>, List<Map<String, dynamic>>>(zones, (value) => pulumi.Input.encodeList<InterconnectGroupPhysicalStructureMetroFacilityZone, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InterconnectGroupPhysicalStructureMetroFacility.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupPhysicalStructureMetroFacility(
      facility: (() { final guardedValue = map['facility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectGroupPhysicalStructureMetroFacilityZone>(guardedValue, (value) => InterconnectGroupPhysicalStructureMetroFacilityZone.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

