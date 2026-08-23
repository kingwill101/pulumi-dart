// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNetworkGatewayIpConfiguration {
  /// The resource ID of the IP configuration.
  final pulumi.Input<String> id;
  /// Specifies the name of the Virtual Network Gateway.
  final pulumi.Input<String> name;
  /// The Private IP Address associated with the Virtual Network Gateway.
  final pulumi.Input<String> privateIpAddress;
  /// Defines how the private IP address
  /// of the gateways virtual interface is assigned.
  final pulumi.Input<String> privateIpAddressAllocation;
  /// The ID of the Public IP Address associated
  /// with the Virtual Network Gateway.
  final pulumi.Input<String> publicIpAddressId;
  /// The ID of the gateway subnet of a virtual network in
  /// which the virtual network gateway will be created. It is mandatory that
  /// the associated subnet is named `GatewaySubnet`. Therefore, each virtual
  /// network can contain at most a single Virtual Network Gateway.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetVirtualNetworkGatewayIpConfiguration].
  /// [id] The resource ID of the IP configuration.
  /// [name] Specifies the name of the Virtual Network Gateway.
  /// [privateIpAddress] The Private IP Address associated with the Virtual Network Gateway.
  /// [privateIpAddressAllocation] Defines how the private IP address
  /// [publicIpAddressId] The ID of the Public IP Address associated
  /// [subnetId] The ID of the gateway subnet of a virtual network in
  const GetVirtualNetworkGatewayIpConfiguration({
    required this.id,
    required this.name,
    required this.privateIpAddress,
    required this.privateIpAddressAllocation,
    required this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'privateIpAddress': privateIpAddress,
      'privateIpAddressAllocation': privateIpAddressAllocation,
      'publicIpAddressId': publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory GetVirtualNetworkGatewayIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayIpConfiguration(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      privateIpAddressAllocation: pulumi.Input.fromValue(map['privateIpAddressAllocation'] as String),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
