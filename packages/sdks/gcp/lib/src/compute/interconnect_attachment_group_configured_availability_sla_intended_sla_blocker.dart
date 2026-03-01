// ignore_for_file: unused_element, unnecessary_cast


class InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker {
  /// Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Attachments per group" quota.
  /// Structure is documented below.
  final List<String>? attachments;
  /// (Output)
  /// The category of an unmet SLA requirement.
  final String? blockerType;
  /// (Output)
  /// The url of Google Cloud public documentation explaining
  /// this requirement. This is set for every type of requirement.
  final String? documentationLink;
  /// (Output)
  /// A human-readable explanation of this requirement and
  /// why it's not met. This is set for every type of requirement.
  final String? explanation;
  /// (Output)
  /// Metros used to explain this blocker in more detail.
  /// These are three-letter lowercase strings like "iad". This will be set
  /// for some blockers (like NO_ATTACHMENTS_IN_METRO_AND_ZONE) but does
  /// not apply to others.
  final List<String>? metros;
  /// (Output)
  /// Regions used to explain this blocker in more
  /// detail. These are region names formatted like "us-central1". This
  /// will be set for some blockers (like INCOMPATIBLE_REGIONS) but does
  /// not apply to others.
  final List<String>? regions;
  /// (Output)
  /// Zones used to explain this blocker in more detail.
  /// Format is "zone1" and/or "zone2". This will be set for some blockers
  /// (like  MISSING_ZONE) but does not apply to others.
  final List<String>? zones;

  /// Creates a new [InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker].
  /// [attachments] Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// [blockerType] (Output)
  /// [documentationLink] (Output)
  /// [explanation] (Output)
  /// [metros] (Output)
  /// [regions] (Output)
  /// [zones] (Output)
  InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker({
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
      attachments: map['attachments'] == null ? null : (map['attachments'] as List).cast<String>(),
      blockerType: map['blockerType'] == null ? null : map['blockerType'] as String,
      documentationLink: map['documentationLink'] == null ? null : map['documentationLink'] as String,
      explanation: map['explanation'] == null ? null : map['explanation'] as String,
      metros: map['metros'] == null ? null : (map['metros'] as List).cast<String>(),
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

