// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustTunnelWarpConnectorConfigConfigVip {
  /// Virtual IP address (IPv4 or IPv6).
  final pulumi.Input<String> address;

  /// Creates a new [ZeroTrustTunnelWarpConnectorConfigConfigVip].
  /// [address] Virtual IP address (IPv4 or IPv6).
  const ZeroTrustTunnelWarpConnectorConfigConfigVip({
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
    };
  }

  factory ZeroTrustTunnelWarpConnectorConfigConfigVip.fromMap(Map<String, dynamic> map) {
    return ZeroTrustTunnelWarpConnectorConfigConfigVip(
      address: pulumi.Input.fromValue(map['address'] as String),
    );
  }
}
