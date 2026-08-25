// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnConnectionDetailCloudVpn {
  /// (Output)
  /// The created Cloud VPN gateway name.
  final pulumi.Input<String?>? gateway;

  /// Creates a new [VpnConnectionDetailCloudVpn].
  /// [gateway] (Output)
  const VpnConnectionDetailCloudVpn({
    this.gateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateway': ?gateway,
    };
  }

  factory VpnConnectionDetailCloudVpn.fromMap(Map<String, dynamic> map) {
    return VpnConnectionDetailCloudVpn(
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
