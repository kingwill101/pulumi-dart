// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringMirroredResourceInfoSubnetInfoComputeV1 {
  /// Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  final pulumi.Input<String>? url;

  /// Creates a new [PacketMirroringMirroredResourceInfoSubnetInfoComputeV1].
  /// [url] Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  PacketMirroringMirroredResourceInfoSubnetInfoComputeV1({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory PacketMirroringMirroredResourceInfoSubnetInfoComputeV1.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoSubnetInfoComputeV1(
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

