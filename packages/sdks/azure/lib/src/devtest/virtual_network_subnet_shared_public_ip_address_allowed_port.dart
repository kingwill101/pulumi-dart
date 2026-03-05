// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkSubnetSharedPublicIpAddressAllowedPort {
  /// The port on the Virtual Machine that the traffic will be sent to.
  final pulumi.Input<int>? backendPort;
  /// The transport protocol that the traffic will use. Possible values are `TCP` and `UDP`.
  final pulumi.Input<String>? transportProtocol;

  /// Creates a new [VirtualNetworkSubnetSharedPublicIpAddressAllowedPort].
  /// [backendPort] The port on the Virtual Machine that the traffic will be sent to.
  /// [transportProtocol] The transport protocol that the traffic will use. Possible values are `TCP` and `UDP`.
  VirtualNetworkSubnetSharedPublicIpAddressAllowedPort({
    this.backendPort,
    this.transportProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': ?backendPort,
      'transportProtocol': ?transportProtocol,
    };
  }

  factory VirtualNetworkSubnetSharedPublicIpAddressAllowedPort.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetSharedPublicIpAddressAllowedPort(
      backendPort: (() { final guardedValue = map['backendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      transportProtocol: (() { final guardedValue = map['transportProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

