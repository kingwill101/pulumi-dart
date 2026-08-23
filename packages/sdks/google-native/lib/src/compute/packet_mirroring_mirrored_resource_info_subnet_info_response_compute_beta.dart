// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta {
  /// Unique identifier for the subnetwork; defined by the server.
  final pulumi.Input<String> canonicalUrl;
  /// Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  final pulumi.Input<String> url;

  /// Creates a new [PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta].
  /// [canonicalUrl] Unique identifier for the subnetwork; defined by the server.
  /// [url] Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  const PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalUrl': canonicalUrl,
      'url': url,
    };
  }

  factory PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta(
      canonicalUrl: pulumi.Input.fromValue(map['canonicalUrl'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
