// ignore_for_file: unused_element, unnecessary_cast


class PacketMirroringNetworkInfoResponseComputeV1 {
  /// Unique identifier for the network; defined by the server.
  final String canonicalUrl;
  /// URL of the network resource.
  final String url;

  /// Creates a new [PacketMirroringNetworkInfoResponseComputeV1].
  /// [canonicalUrl] Unique identifier for the network; defined by the server.
  /// [url] URL of the network resource.
  PacketMirroringNetworkInfoResponseComputeV1({
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
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

