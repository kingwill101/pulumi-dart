// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayConnectionCustomBgpAddresses {
  /// single IP address that is part of the `azure.network.VirtualNetworkGateway` ipConfiguration (first one)
  final pulumi.Input<String> primary;
  /// single IP address that is part of the `azure.network.VirtualNetworkGateway` ipConfiguration (second one)
  final pulumi.Input<String>? secondary;

  /// Creates a new [VirtualNetworkGatewayConnectionCustomBgpAddresses].
  /// [primary] single IP address that is part of the `azure.network.VirtualNetworkGateway` ipConfiguration (first one)
  /// [secondary] single IP address that is part of the `azure.network.VirtualNetworkGateway` ipConfiguration (second one)
  const VirtualNetworkGatewayConnectionCustomBgpAddresses({
    required this.primary,
    this.secondary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': primary,
      'secondary': ?secondary,
    };
  }

  factory VirtualNetworkGatewayConnectionCustomBgpAddresses.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayConnectionCustomBgpAddresses(
      primary: pulumi.Input.fromValue(map['primary'] as String),
      secondary: (() { final guardedValue = map['secondary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
