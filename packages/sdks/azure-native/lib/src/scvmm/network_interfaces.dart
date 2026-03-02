// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network Interface model
class NetworkInterfaces {
  /// Gets or sets the ipv4 address type.
  final pulumi.Input<String>? ipv4AddressType;
  /// Gets or sets the ipv6 address type.
  final pulumi.Input<String>? ipv6AddressType;
  /// Gets or sets the nic MAC address.
  final pulumi.Input<String>? macAddress;
  /// Gets or sets the mac address type.
  final pulumi.Input<String>? macAddressType;
  /// Gets or sets the name of the network interface.
  final pulumi.Input<String>? name;
  /// Gets or sets the nic id.
  final pulumi.Input<String>? nicId;
  /// Gets or sets the ARM Id of the Microsoft.ScVmm/virtualNetwork resource to connect the nic.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [NetworkInterfaces].
  /// [ipv4AddressType] Gets or sets the ipv4 address type.
  /// [ipv6AddressType] Gets or sets the ipv6 address type.
  /// [macAddress] Gets or sets the nic MAC address.
  /// [macAddressType] Gets or sets the mac address type.
  /// [name] Gets or sets the name of the network interface.
  /// [nicId] Gets or sets the nic id.
  /// [virtualNetworkId] Gets or sets the ARM Id of the Microsoft.ScVmm/virtualNetwork resource to connect the nic.
  NetworkInterfaces({
    this.ipv4AddressType,
    this.ipv6AddressType,
    this.macAddress,
    this.macAddressType,
    this.name,
    this.nicId,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4AddressType': ?ipv4AddressType,
      'ipv6AddressType': ?ipv6AddressType,
      'macAddress': ?macAddress,
      'macAddressType': ?macAddressType,
      'name': ?name,
      'nicId': ?nicId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory NetworkInterfaces.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaces(
      ipv4AddressType: map['ipv4AddressType'] == null ? null : (map['ipv4AddressType'] as String).input(),
      ipv6AddressType: map['ipv6AddressType'] == null ? null : (map['ipv6AddressType'] as String).input(),
      macAddress: map['macAddress'] == null ? null : (map['macAddress'] as String).input(),
      macAddressType: map['macAddressType'] == null ? null : (map['macAddressType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nicId: map['nicId'] == null ? null : (map['nicId'] as String).input(),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : (map['virtualNetworkId'] as String).input(),
    );
  }
}

