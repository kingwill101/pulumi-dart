// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpokeLinkedInterconnectAttachments {
  /// IP ranges allowed to be included during import from hub (does not control transit connectivity).
  /// The only allowed value for now is "ALL_IPV4_RANGES".
  final pulumi.Input<List<String>>? includeImportRanges;

  /// A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  final pulumi.Input<bool> siteToSiteDataTransfer;

  /// The URIs of linked interconnect attachment resources
  final pulumi.Input<List<String>> uris;

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
      includeImportRanges: (() {
        final guardedValue = map['includeImportRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      siteToSiteDataTransfer: pulumi.Input.fromValue(
        map['siteToSiteDataTransfer'] as bool,
      ),
      uris: pulumi.Input.fromValue((map['uris'] as List).cast<String>()),
    );
  }
}
