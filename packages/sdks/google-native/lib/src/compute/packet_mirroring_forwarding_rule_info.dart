// ignore_for_file: unused_element, unnecessary_cast


class PacketMirroringForwardingRuleInfo {
  /// Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  final String? url;

  /// Creates a new [PacketMirroringForwardingRuleInfo].
  /// [url] Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  PacketMirroringForwardingRuleInfo({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory PacketMirroringForwardingRuleInfo.fromMap(Map<String, dynamic> map) {
    return PacketMirroringForwardingRuleInfo(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

