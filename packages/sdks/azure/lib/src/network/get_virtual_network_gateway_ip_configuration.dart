// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNetworkGatewayIpConfiguration {
  /// The resource ID of the IP configuration.
  final String id;
  /// Specifies the name of the Virtual Network Gateway.
  final String name;
  /// The Private IP Address associated with the Virtual Network Gateway.
  final String privateIpAddress;
  /// Defines how the private IP address
  /// of the gateways virtual interface is assigned.
  final String privateIpAddressAllocation;
  /// The ID of the Public IP Address associated
  /// with the Virtual Network Gateway.
  final String publicIpAddressId;
  /// The ID of the gateway subnet of a virtual network in
  /// which the virtual network gateway will be created. It is mandatory that
  /// the associated subnet is named `GatewaySubnet`. Therefore, each virtual
  /// network can contain at most a single Virtual Network Gateway.
  final String subnetId;

  /// Creates a new [GetVirtualNetworkGatewayIpConfiguration].
  /// [id] The resource ID of the IP configuration.
  /// [name] Specifies the name of the Virtual Network Gateway.
  /// [privateIpAddress] The Private IP Address associated with the Virtual Network Gateway.
  /// [privateIpAddressAllocation] Defines how the private IP address
  /// [publicIpAddressId] The ID of the Public IP Address associated
  /// [subnetId] The ID of the gateway subnet of a virtual network in
  GetVirtualNetworkGatewayIpConfiguration({
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
      id: map['id'] as String,
      name: map['name'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      privateIpAddressAllocation: map['privateIpAddressAllocation'] as String,
      publicIpAddressId: map['publicIpAddressId'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

