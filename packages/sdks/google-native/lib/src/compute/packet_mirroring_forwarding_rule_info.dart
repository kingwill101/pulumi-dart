// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringForwardingRuleInfo {
  /// Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  final pulumi.Input<String>? url;

  /// Creates a new [PacketMirroringForwardingRuleInfo].
  /// [url] Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  PacketMirroringForwardingRuleInfo({this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'url': ?url};
  }

  factory PacketMirroringForwardingRuleInfo.fromMap(Map<String, dynamic> map) {
    return PacketMirroringForwardingRuleInfo(
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
