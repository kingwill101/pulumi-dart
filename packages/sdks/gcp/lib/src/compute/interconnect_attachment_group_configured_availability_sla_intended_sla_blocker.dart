// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker {
  /// Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Attachments per group" quota.
  /// Structure is documented below.
  final pulumi.Input<List<String>>? attachments;
  /// (Output)
  /// The category of an unmet SLA requirement.
  final pulumi.Input<String>? blockerType;
  /// (Output)
  /// The url of Google Cloud public documentation explaining
  /// this requirement. This is set for every type of requirement.
  final pulumi.Input<String>? documentationLink;
  /// (Output)
  /// A human-readable explanation of this requirement and
  /// why it's not met. This is set for every type of requirement.
  final pulumi.Input<String>? explanation;
  /// (Output)
  /// Metros used to explain this blocker in more detail.
  /// These are three-letter lowercase strings like "iad". This will be set
  /// for some blockers (like NO_ATTACHMENTS_IN_METRO_AND_ZONE) but does
  /// not apply to others.
  final pulumi.Input<List<String>>? metros;
  /// (Output)
  /// Regions used to explain this blocker in more
  /// detail. These are region names formatted like "us-central1". This
  /// will be set for some blockers (like INCOMPATIBLE_REGIONS) but does
  /// not apply to others.
  final pulumi.Input<List<String>>? regions;
  /// (Output)
  /// Zones used to explain this blocker in more detail.
  /// Format is "zone1" and/or "zone2". This will be set for some blockers
  /// (like  MISSING_ZONE) but does not apply to others.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker].
  /// [attachments] Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// [blockerType] (Output)
  /// [documentationLink] (Output)
  /// [explanation] (Output)
  /// [metros] (Output)
  /// [regions] (Output)
  /// [zones] (Output)
  const InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker({
    this.attachments,
    this.blockerType,
    this.documentationLink,
    this.explanation,
    this.metros,
    this.regions,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': ?attachments,
      'blockerType': ?blockerType,
      'documentationLink': ?documentationLink,
      'explanation': ?explanation,
      'metros': ?metros,
      'regions': ?regions,
      'zones': ?zones,
    };
  }

  factory InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker(
      attachments: (() { final guardedValue = map['attachments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      blockerType: (() { final guardedValue = map['blockerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentationLink: (() { final guardedValue = map['documentationLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      explanation: (() { final guardedValue = map['explanation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metros: (() { final guardedValue = map['metros']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

