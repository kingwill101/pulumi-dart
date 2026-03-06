// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringMirroredResourceInfoInstanceInfoResponse {
  /// Unique identifier for the instance; defined by the server.
  final pulumi.Input<String> canonicalUrl;
  /// Resource URL to the virtual machine instance which is being mirrored.
  final pulumi.Input<String> url;

  /// Creates a new [PacketMirroringMirroredResourceInfoInstanceInfoResponse].
  /// [canonicalUrl] Unique identifier for the instance; defined by the server.
  /// [url] Resource URL to the virtual machine instance which is being mirrored.
  const PacketMirroringMirroredResourceInfoInstanceInfoResponse({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalUrl': canonicalUrl,
      'url': url,
    };
  }

  factory PacketMirroringMirroredResourceInfoInstanceInfoResponse.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoInstanceInfoResponse(
      canonicalUrl: pulumi.Input.fromValue(map['canonicalUrl'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

