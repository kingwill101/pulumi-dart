// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeV1 {
  /// Unique identifier for the instance; defined by the server.
  final pulumi.Input<String> canonicalUrl;
  /// Resource URL to the virtual machine instance which is being mirrored.
  final pulumi.Input<String> url;

  /// Creates a new [PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeV1].
  /// [canonicalUrl] Unique identifier for the instance; defined by the server.
  /// [url] Resource URL to the virtual machine instance which is being mirrored.
  const PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeV1({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalUrl': canonicalUrl,
      'url': url,
    };
  }

  factory PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeV1(
      canonicalUrl: pulumi.Input.fromValue(map['canonicalUrl'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
