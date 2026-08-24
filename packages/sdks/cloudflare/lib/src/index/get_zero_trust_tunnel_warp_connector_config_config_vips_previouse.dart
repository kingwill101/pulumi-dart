// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse {
  /// Virtual IP address (IPv4 or IPv6).
  final pulumi.Input<String> address;

  /// Creates a new [GetZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse].
  /// [address] Virtual IP address (IPv4 or IPv6).
  const GetZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse({
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
    };
  }

  factory GetZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse(
      address: pulumi.Input.fromValue(map['address'] as String),
    );
  }
}
