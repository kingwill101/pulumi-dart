// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_group_logical_structure_region_metro_facility_zone.dart';

class InterconnectAttachmentGroupLogicalStructureRegionMetroFacility {
  /// (Output)
  /// The name of a facility, like "iad-1234".
  final pulumi.Input<String>? facility;
  /// (Output)
  /// Zones used to explain this blocker in more detail.
  /// Format is "zone1" and/or "zone2". This will be set for some blockers
  /// (like  MISSING_ZONE) but does not apply to others.
  final pulumi.Input<List<InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone>>? zones;

  /// Creates a new [InterconnectAttachmentGroupLogicalStructureRegionMetroFacility].
  /// [facility] (Output)
  /// [zones] (Output)
  InterconnectAttachmentGroupLogicalStructureRegionMetroFacility({
    this.facility,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'facility': ?facility,
      'zones': ?pulumi.Input.mapOptionalInputValue<List<InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone>, List<Map<String, dynamic>>>(zones, (value) => pulumi.Input.encodeList<InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InterconnectAttachmentGroupLogicalStructureRegionMetroFacility.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentGroupLogicalStructureRegionMetroFacility(
      facility: map['facility'] == null ? null : (map['facility']! as String).input(),
      zones: map['zones'] == null ? null : (pulumi.Input.decodeList<InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone>(map['zones']!, (value) => InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

