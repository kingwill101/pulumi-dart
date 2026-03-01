// ignore_for_file: unused_element, unnecessary_cast


class PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta {
  /// Unique identifier for the subnetwork; defined by the server.
  final String canonicalUrl;
  /// Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  final String url;

  /// Creates a new [PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta].
  /// [canonicalUrl] Unique identifier for the subnetwork; defined by the server.
  /// [url] Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta({
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
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

