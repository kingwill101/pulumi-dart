// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network Interface model
class NetworkInterfacesResponse {
  /// Gets the display name of the network interface as shown in the vmmServer. This is the fallback label for a NIC when the name is not set.
  final pulumi.Input<String> displayName;
  /// Gets or sets the ipv4 address type.
  final pulumi.Input<String>? ipv4AddressType;
  /// Gets or sets the nic ipv4 addresses.
  final pulumi.Input<List<String>> ipv4Addresses;
  /// Gets or sets the ipv6 address type.
  final pulumi.Input<String>? ipv6AddressType;
  /// Gets or sets the nic ipv6 addresses.
  final pulumi.Input<List<String>> ipv6Addresses;
  /// Gets or sets the nic MAC address.
  final pulumi.Input<String>? macAddress;
  /// Gets or sets the mac address type.
  final pulumi.Input<String>? macAddressType;
  /// Gets or sets the name of the network interface.
  final pulumi.Input<String>? name;
  /// Gets or sets the name of the virtual network in vmmServer that the nic is connected to.
  final pulumi.Input<String> networkName;
  /// Gets or sets the nic id.
  final pulumi.Input<String>? nicId;
  /// Gets or sets the ARM Id of the Microsoft.ScVmm/virtualNetwork resource to connect the nic.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [NetworkInterfacesResponse].
  /// [displayName] Gets the display name of the network interface as shown in the vmmServer. This is the fallback label for a NIC when the name is not set.
  /// [ipv4AddressType] Gets or sets the ipv4 address type.
  /// [ipv4Addresses] Gets or sets the nic ipv4 addresses.
  /// [ipv6AddressType] Gets or sets the ipv6 address type.
  /// [ipv6Addresses] Gets or sets the nic ipv6 addresses.
  /// [macAddress] Gets or sets the nic MAC address.
  /// [macAddressType] Gets or sets the mac address type.
  /// [name] Gets or sets the name of the network interface.
  /// [networkName] Gets or sets the name of the virtual network in vmmServer that the nic is connected to.
  /// [nicId] Gets or sets the nic id.
  /// [virtualNetworkId] Gets or sets the ARM Id of the Microsoft.ScVmm/virtualNetwork resource to connect the nic.
  const NetworkInterfacesResponse({
    required this.displayName,
    this.ipv4AddressType,
    required this.ipv4Addresses,
    this.ipv6AddressType,
    required this.ipv6Addresses,
    this.macAddress,
    this.macAddressType,
    this.name,
    required this.networkName,
    this.nicId,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'ipv4AddressType': ?ipv4AddressType,
      'ipv4Addresses': ipv4Addresses,
      'ipv6AddressType': ?ipv6AddressType,
      'ipv6Addresses': ipv6Addresses,
      'macAddress': ?macAddress,
      'macAddressType': ?macAddressType,
      'name': ?name,
      'networkName': networkName,
      'nicId': ?nicId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory NetworkInterfacesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfacesResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      ipv4AddressType: (() { final guardedValue = map['ipv4AddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4Addresses: pulumi.Input.fromValue((map['ipv4Addresses'] as List).cast<String>()),
      ipv6AddressType: (() { final guardedValue = map['ipv6AddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Addresses: pulumi.Input.fromValue((map['ipv6Addresses'] as List).cast<String>()),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macAddressType: (() { final guardedValue = map['macAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkName: pulumi.Input.fromValue(map['networkName'] as String),
      nicId: (() { final guardedValue = map['nicId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

