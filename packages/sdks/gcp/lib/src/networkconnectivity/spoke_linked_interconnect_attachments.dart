// ignore_for_file: unused_element, unnecessary_cast


class SpokeLinkedInterconnectAttachments {
  /// IP ranges allowed to be included during import from hub (does not control transit connectivity).
  /// The only allowed value for now is "ALL_IPV4_RANGES".
  final List<String>? includeImportRanges;
  /// A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  final bool siteToSiteDataTransfer;
  /// The URIs of linked interconnect attachment resources
  final List<String> uris;

  /// Creates a new [SpokeLinkedInterconnectAttachments].
  /// [includeImportRanges] IP ranges allowed to be included during import from hub (does not control transit connectivity).
  /// [siteToSiteDataTransfer] A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  /// [uris] The URIs of linked interconnect attachment resources
  SpokeLinkedInterconnectAttachments({
    this.includeImportRanges,
    required this.siteToSiteDataTransfer,
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeImportRanges': ?includeImportRanges,
      'siteToSiteDataTransfer': siteToSiteDataTransfer,
      'uris': uris,
    };
  }

  factory SpokeLinkedInterconnectAttachments.fromMap(Map<String, dynamic> map) {
    return SpokeLinkedInterconnectAttachments(
      includeImportRanges: map['includeImportRanges'] == null ? null : (map['includeImportRanges'] as List).cast<String>(),
      siteToSiteDataTransfer: map['siteToSiteDataTransfer'] as bool,
      uris: (map['uris'] as List).cast<String>(),
    );
  }
}

