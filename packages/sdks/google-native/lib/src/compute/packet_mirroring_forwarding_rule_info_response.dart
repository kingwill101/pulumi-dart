// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringForwardingRuleInfoResponse {
  /// Unique identifier for the forwarding rule; defined by the server.
  final pulumi.Input<String> canonicalUrl;
  /// Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  final pulumi.Input<String> url;

  /// Creates a new [PacketMirroringForwardingRuleInfoResponse].
  /// [canonicalUrl] Unique identifier for the forwarding rule; defined by the server.
  /// [url] Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  const PacketMirroringForwardingRuleInfoResponse({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalUrl': canonicalUrl,
      'url': url,
    };
  }

  factory PacketMirroringForwardingRuleInfoResponse.fromMap(Map<String, dynamic> map) {
    return PacketMirroringForwardingRuleInfoResponse(
      canonicalUrl: pulumi.Input.fromValue(map['canonicalUrl'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
