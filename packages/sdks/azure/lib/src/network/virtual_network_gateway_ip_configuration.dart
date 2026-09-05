// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayIpConfiguration {
  /// A user-defined name of the IP configuration. Defaults to `vnetGatewayConfig`.
  final pulumi.Input<String?>? name;
  /// Defines how the private IP address of the gateways virtual interface is assigned. The only valid value is `Dynamic` for Virtual Network Gateway (`Static` is not supported by the service yet). Defaults to `Dynamic`.
  final pulumi.Input<String?>? privateIpAddressAllocation;
  /// The ID of the public IP address to associate with the Virtual Network Gateway.
  ///
  /// &gt; **Note:** `publicIpAddressId` should not be specified when `type` is set to `ExpressRoute`.
  final pulumi.Input<String?>? publicIpAddressId;
  /// The ID of the gateway subnet of a virtual network in which the virtual network gateway will be created. It is mandatory that the associated subnet is named `GatewaySubnet`. Therefore, each virtual network can contain at most a single Virtual Network Gateway.
  final pulumi.Input<String> subnetId;

  /// Creates a new [VirtualNetworkGatewayIpConfiguration].
  /// [name] A user-defined name of the IP configuration. Defaults to `vnetGatewayConfig`.
  /// [privateIpAddressAllocation] Defines how the private IP address of the gateways virtual interface is assigned. The only valid value is `Dynamic` for Virtual Network Gateway (`Static` is not supported by the service yet). Defaults to `Dynamic`.
  /// [publicIpAddressId] The ID of the public IP address to associate with the Virtual Network Gateway.
  /// [subnetId] The ID of the gateway subnet of a virtual network in which the virtual network gateway will be created. It is mandatory that the associated subnet is named `GatewaySubnet`. Therefore, each virtual network can contain at most a single Virtual Network Gateway.
  const VirtualNetworkGatewayIpConfiguration({
    this.name,
    this.privateIpAddressAllocation,
    this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'privateIpAddressAllocation': ?privateIpAddressAllocation,
      'publicIpAddressId': ?publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory VirtualNetworkGatewayIpConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayIpConfiguration(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddressAllocation: (() { final guardedValue = map['privateIpAddressAllocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressId: (() { final guardedValue = map['publicIpAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
