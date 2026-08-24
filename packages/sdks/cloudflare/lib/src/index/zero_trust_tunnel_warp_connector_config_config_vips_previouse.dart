// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse {
  /// Virtual IP address (IPv4 or IPv6).
  final pulumi.Input<String> address;

  /// Creates a new [ZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse].
  /// [address] Virtual IP address (IPv4 or IPv6).
  const ZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse({
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
    };
  }

  factory ZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse.fromMap(Map<String, dynamic> map) {
    return ZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse(
      address: pulumi.Input.fromValue(map['address'] as String),
    );
  }
}
