// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringCollectorIlb {
  /// The URL of the forwarding rule.
  final pulumi.Input<String> url;

  /// Creates a new [PacketMirroringCollectorIlb].
  /// [url] The URL of the forwarding rule.
  const PacketMirroringCollectorIlb({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory PacketMirroringCollectorIlb.fromMap(Map<String, dynamic> map) {
    return PacketMirroringCollectorIlb(
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

