// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringNetworkInfoResponseComputeBeta {
  /// Unique identifier for the network; defined by the server.
  final pulumi.Input<String> canonicalUrl;
  /// URL of the network resource.
  final pulumi.Input<String> url;

  /// Creates a new [PacketMirroringNetworkInfoResponseComputeBeta].
  /// [canonicalUrl] Unique identifier for the network; defined by the server.
  /// [url] URL of the network resource.
  PacketMirroringNetworkInfoResponseComputeBeta({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalUrl': canonicalUrl,
      'url': url,
    };
  }

  factory PacketMirroringNetworkInfoResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return PacketMirroringNetworkInfoResponseComputeBeta(
      canonicalUrl: pulumi.Input.fromValue(map['canonicalUrl'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

