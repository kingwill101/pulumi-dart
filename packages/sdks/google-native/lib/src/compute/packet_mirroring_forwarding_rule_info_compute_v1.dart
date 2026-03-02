// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringForwardingRuleInfoComputeV1 {
  /// Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  final pulumi.Input<String>? url;

  /// Creates a new [PacketMirroringForwardingRuleInfoComputeV1].
  /// [url] Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  PacketMirroringForwardingRuleInfoComputeV1({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory PacketMirroringForwardingRuleInfoComputeV1.fromMap(Map<String, dynamic> map) {
    return PacketMirroringForwardingRuleInfoComputeV1(
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

