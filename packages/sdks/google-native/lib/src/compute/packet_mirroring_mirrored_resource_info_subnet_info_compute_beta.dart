// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta {
  /// Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  final pulumi.Input<String>? url;

  /// Creates a new [PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta].
  /// [url] Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  const PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta(
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

