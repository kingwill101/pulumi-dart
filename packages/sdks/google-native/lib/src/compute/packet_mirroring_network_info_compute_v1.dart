// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringNetworkInfoComputeV1 {
  /// URL of the network resource.
  final pulumi.Input<String>? url;

  /// Creates a new [PacketMirroringNetworkInfoComputeV1].
  /// [url] URL of the network resource.
  const PacketMirroringNetworkInfoComputeV1({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory PacketMirroringNetworkInfoComputeV1.fromMap(Map<String, dynamic> map) {
    return PacketMirroringNetworkInfoComputeV1(
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

