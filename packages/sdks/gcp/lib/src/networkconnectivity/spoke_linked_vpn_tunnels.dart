// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpokeLinkedVpnTunnels {
  /// Dynamic routes overlapped/encompassed by exclude export ranges are excluded during export to hub.
  final pulumi.Input<List<String>>? excludeExportRanges;
  /// Hub routes overlapped/encompassed by exclude import ranges are excluded during import from hub.
  final pulumi.Input<List<String>>? excludeImportRanges;
  /// Dynamic routes fully encompassed by include export ranges are included during export to hub.
  final pulumi.Input<List<String>>? includeExportRanges;
  /// Hub routes fully encompassed by include import ranges are included during import from hub.
  /// "ALL_IPV4_RANGES" or IPv4 CIDR ranges are allowed.
  final pulumi.Input<List<String>>? includeImportRanges;
  /// A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  final pulumi.Input<bool> siteToSiteDataTransfer;
  /// The URIs of linked VPN tunnel resources.
  final pulumi.Input<List<String>> uris;

  /// Creates a new [SpokeLinkedVpnTunnels].
  /// [excludeExportRanges] Dynamic routes overlapped/encompassed by exclude export ranges are excluded during export to hub.
  /// [excludeImportRanges] Hub routes overlapped/encompassed by exclude import ranges are excluded during import from hub.
  /// [includeExportRanges] Dynamic routes fully encompassed by include export ranges are included during export to hub.
  /// [includeImportRanges] Hub routes fully encompassed by include import ranges are included during import from hub.
  /// [siteToSiteDataTransfer] A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  /// [uris] The URIs of linked VPN tunnel resources.
  const SpokeLinkedVpnTunnels({
    this.excludeExportRanges,
    this.excludeImportRanges,
    this.includeExportRanges,
    this.includeImportRanges,
    required this.siteToSiteDataTransfer,
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeExportRanges': ?excludeExportRanges,
      'excludeImportRanges': ?excludeImportRanges,
      'includeExportRanges': ?includeExportRanges,
      'includeImportRanges': ?includeImportRanges,
      'siteToSiteDataTransfer': siteToSiteDataTransfer,
      'uris': uris,
    };
  }

  factory SpokeLinkedVpnTunnels.fromMap(Map<String, dynamic> map) {
    return SpokeLinkedVpnTunnels(
      excludeExportRanges: (() { final guardedValue = map['excludeExportRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludeImportRanges: (() { final guardedValue = map['excludeImportRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeExportRanges: (() { final guardedValue = map['includeExportRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeImportRanges: (() { final guardedValue = map['includeImportRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      siteToSiteDataTransfer: pulumi.Input.fromValue(map['siteToSiteDataTransfer'] as bool),
      uris: pulumi.Input.fromValue((map['uris'] as List).cast<String>()),
    );
  }
}
