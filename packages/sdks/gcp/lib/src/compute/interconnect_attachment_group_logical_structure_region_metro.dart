// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_group_logical_structure_region_metro_facility.dart';

class InterconnectAttachmentGroupLogicalStructureRegionMetro {
  /// (Output)
  /// The facilities used for this group's Attachments'
  /// Interconnects.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectAttachmentGroupLogicalStructureRegionMetroFacility>>? facilities;
  /// (Output)
  /// The name of the metro, as a three-letter lowercase
  /// string like "iad". This is the first component of the location of an
  /// Interconnect.
  final pulumi.Input<String>? metro;

  /// Creates a new [InterconnectAttachmentGroupLogicalStructureRegionMetro].
  /// [facilities] (Output)
  /// [metro] (Output)
  InterconnectAttachmentGroupLogicalStructureRegionMetro({
    this.facilities,
    this.metro,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'facilities': ?pulumi.Input.mapOptionalInputValue<List<InterconnectAttachmentGroupLogicalStructureRegionMetroFacility>, List<Map<String, dynamic>>>(facilities, (value) => pulumi.Input.encodeList<InterconnectAttachmentGroupLogicalStructureRegionMetroFacility, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metro': ?metro,
    };
  }

  factory InterconnectAttachmentGroupLogicalStructureRegionMetro.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentGroupLogicalStructureRegionMetro(
      facilities: (() { final guardedValue = map['facilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectAttachmentGroupLogicalStructureRegionMetroFacility>(guardedValue, (value) => InterconnectAttachmentGroupLogicalStructureRegionMetroFacility.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metro: (() { final guardedValue = map['metro']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

