// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_subnet_shared_public_ip_address_allowed_port.dart';

class VirtualNetworkSubnetSharedPublicIpAddress {
  /// A list of `allowedPorts` blocks as defined below.
  final pulumi.Input<List<VirtualNetworkSubnetSharedPublicIpAddressAllowedPort>>? allowedPorts;

  /// Creates a new [VirtualNetworkSubnetSharedPublicIpAddress].
  /// [allowedPorts] A list of `allowedPorts` blocks as defined below.
  const VirtualNetworkSubnetSharedPublicIpAddress({
    this.allowedPorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPorts': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkSubnetSharedPublicIpAddressAllowedPort>, List<Map<String, dynamic>>>(allowedPorts, (value) => pulumi.Input.encodeList<VirtualNetworkSubnetSharedPublicIpAddressAllowedPort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualNetworkSubnetSharedPublicIpAddress.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetSharedPublicIpAddress(
      allowedPorts: (() { final guardedValue = map['allowedPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkSubnetSharedPublicIpAddressAllowedPort>(guardedValue, (value) => VirtualNetworkSubnetSharedPublicIpAddressAllowedPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
