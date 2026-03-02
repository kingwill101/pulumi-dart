// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_group_logical_structure_region_metro.dart';

class InterconnectAttachmentGroupLogicalStructureRegion {
  /// (Output)
  /// Metros used to explain this blocker in more detail.
  /// These are three-letter lowercase strings like "iad". This will be set
  /// for some blockers (like NO_ATTACHMENTS_IN_METRO_AND_ZONE) but does
  /// not apply to others.
  final pulumi.Input<List<InterconnectAttachmentGroupLogicalStructureRegionMetro>>? metros;
  /// (Output)
  /// The name of a region, like "us-central1".
  final pulumi.Input<String>? region;

  /// Creates a new [InterconnectAttachmentGroupLogicalStructureRegion].
  /// [metros] (Output)
  /// [region] (Output)
  InterconnectAttachmentGroupLogicalStructureRegion({
    this.metros,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metros': ?pulumi.Input.mapOptionalInputValue<List<InterconnectAttachmentGroupLogicalStructureRegionMetro>, List<Map<String, dynamic>>>(metros, (value) => pulumi.Input.encodeList<InterconnectAttachmentGroupLogicalStructureRegionMetro, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory InterconnectAttachmentGroupLogicalStructureRegion.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentGroupLogicalStructureRegion(
      metros: map['metros'] == null ? null : (pulumi.Input.decodeList<InterconnectAttachmentGroupLogicalStructureRegionMetro>(map['metros']!, (value) => InterconnectAttachmentGroupLogicalStructureRegionMetro.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

