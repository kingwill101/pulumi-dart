// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_group_physical_structure_metro_facility.dart';

class InterconnectGroupPhysicalStructureMetro {
  /// (Output)
  /// Facilities used to explain this blocker in more detail.
  /// Like physicalStructure.metros.facilities.facility, this is a numeric
  /// string like "5467".
  final pulumi.Input<List<InterconnectGroupPhysicalStructureMetroFacility>>? facilities;
  /// (Output)
  /// The name of the metro, as a three-letter lowercase string
  /// like "iad". This is the first component of the location of
  /// Interconnects underneath this.
  final pulumi.Input<String>? metro;

  /// Creates a new [InterconnectGroupPhysicalStructureMetro].
  /// [facilities] (Output)
  /// [metro] (Output)
  InterconnectGroupPhysicalStructureMetro({
    this.facilities,
    this.metro,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'facilities': ?pulumi.Input.mapOptionalInputValue<List<InterconnectGroupPhysicalStructureMetroFacility>, List<Map<String, dynamic>>>(facilities, (value) => pulumi.Input.encodeList<InterconnectGroupPhysicalStructureMetroFacility, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metro': ?metro,
    };
  }

  factory InterconnectGroupPhysicalStructureMetro.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupPhysicalStructureMetro(
      facilities: map['facilities'] == null ? null : (pulumi.Input.decodeList<InterconnectGroupPhysicalStructureMetroFacility>(map['facilities'], (value) => InterconnectGroupPhysicalStructureMetroFacility.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metro: map['metro'] == null ? null : (map['metro'] as String).input(),
    );
  }
}

