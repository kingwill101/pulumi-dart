// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectGroupPhysicalStructureMetroFacilityZone {
  /// Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Interconnects per group" quota.
  /// Structure is documented below.
  final pulumi.Input<List<String>>? interconnects;
  /// (Output)
  /// The name of the zone, either "zone1" or "zone2".
  /// This is the second component of the location of Interconnects in
  /// this facility.
  final pulumi.Input<String>? zone;

  /// Creates a new [InterconnectGroupPhysicalStructureMetroFacilityZone].
  /// [interconnects] Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// [zone] (Output)
  const InterconnectGroupPhysicalStructureMetroFacilityZone({
    this.interconnects,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnects': ?interconnects,
      'zone': ?zone,
    };
  }

  factory InterconnectGroupPhysicalStructureMetroFacilityZone.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupPhysicalStructureMetroFacilityZone(
      interconnects: (() { final guardedValue = map['interconnects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
