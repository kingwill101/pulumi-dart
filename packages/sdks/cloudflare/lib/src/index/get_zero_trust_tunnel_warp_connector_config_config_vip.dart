// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustTunnelWarpConnectorConfigConfigVip {
  /// Virtual IP address (IPv4 or IPv6).
  final pulumi.Input<String> address;

  /// Creates a new [GetZeroTrustTunnelWarpConnectorConfigConfigVip].
  /// [address] Virtual IP address (IPv4 or IPv6).
  const GetZeroTrustTunnelWarpConnectorConfigConfigVip({
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
    };
  }

  factory GetZeroTrustTunnelWarpConnectorConfigConfigVip.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelWarpConnectorConfigConfigVip(
      address: pulumi.Input.fromValue(map['address'] as String),
    );
  }
}
