// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringMirroredResourcesSubnetwork {
  /// The URL of the subnetwork where this rule should be active.
  final pulumi.Input<String> url;

  /// Creates a new [PacketMirroringMirroredResourcesSubnetwork].
  /// [url] The URL of the subnetwork where this rule should be active.
  PacketMirroringMirroredResourcesSubnetwork({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory PacketMirroringMirroredResourcesSubnetwork.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResourcesSubnetwork(
      url: (map['url'] as String).input(),
    );
  }
}

