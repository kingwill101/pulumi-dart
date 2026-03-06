// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringNetworkInfoResponseComputeV1 {
  /// Unique identifier for the network; defined by the server.
  final pulumi.Input<String> canonicalUrl;
  /// URL of the network resource.
  final pulumi.Input<String> url;

  /// Creates a new [PacketMirroringNetworkInfoResponseComputeV1].
  /// [canonicalUrl] Unique identifier for the network; defined by the server.
  /// [url] URL of the network resource.
  const PacketMirroringNetworkInfoResponseComputeV1({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalUrl': canonicalUrl,
      'url': url,
    };
  }

  factory PacketMirroringNetworkInfoResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return PacketMirroringNetworkInfoResponseComputeV1(
      canonicalUrl: pulumi.Input.fromValue(map['canonicalUrl'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

