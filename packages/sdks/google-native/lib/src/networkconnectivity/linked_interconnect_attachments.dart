// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes.
class LinkedInterconnectAttachments {
  /// A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  final pulumi.Input<bool>? siteToSiteDataTransfer;
  /// The URIs of linked interconnect attachment resources
  final pulumi.Input<List<String>>? uris;

  /// Creates a new [LinkedInterconnectAttachments].
  /// [siteToSiteDataTransfer] A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  /// [uris] The URIs of linked interconnect attachment resources
  const LinkedInterconnectAttachments({
    this.siteToSiteDataTransfer,
    this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'siteToSiteDataTransfer': ?siteToSiteDataTransfer,
      'uris': ?uris,
    };
  }

  factory LinkedInterconnectAttachments.fromMap(Map<String, dynamic> map) {
    return LinkedInterconnectAttachments(
      siteToSiteDataTransfer: (() { final guardedValue = map['siteToSiteDataTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      uris: (() { final guardedValue = map['uris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
