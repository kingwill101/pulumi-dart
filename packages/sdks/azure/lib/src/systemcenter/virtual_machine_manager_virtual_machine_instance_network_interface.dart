// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineManagerVirtualMachineInstanceNetworkInterface {
  /// The IPv4 address type. Possible values are `Dynamic` and `Static`.
  final pulumi.Input<String>? ipv4AddressType;
  /// The IPv6 address type. Possible values are `Dynamic` and `Static`.
  final pulumi.Input<String>? ipv6AddressType;
  /// The MAC address type. Possible values are `Dynamic` and `Static`.
  final pulumi.Input<String>? macAddressType;
  /// The name of the Virtual Network in System Center Virtual Machine Manager Server that the Network Interface is connected to.
  final pulumi.Input<String> name;
  /// The ID of the System Center Virtual Machine Manager Virtual Network to connect the Network Interface.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [VirtualMachineManagerVirtualMachineInstanceNetworkInterface].
  /// [ipv4AddressType] The IPv4 address type. Possible values are `Dynamic` and `Static`.
  /// [ipv6AddressType] The IPv6 address type. Possible values are `Dynamic` and `Static`.
  /// [macAddressType] The MAC address type. Possible values are `Dynamic` and `Static`.
  /// [name] The name of the Virtual Network in System Center Virtual Machine Manager Server that the Network Interface is connected to.
  /// [virtualNetworkId] The ID of the System Center Virtual Machine Manager Virtual Network to connect the Network Interface.
  const VirtualMachineManagerVirtualMachineInstanceNetworkInterface({
    this.ipv4AddressType,
    this.ipv6AddressType,
    this.macAddressType,
    required this.name,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4AddressType': ?ipv4AddressType,
      'ipv6AddressType': ?ipv6AddressType,
      'macAddressType': ?macAddressType,
      'name': name,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory VirtualMachineManagerVirtualMachineInstanceNetworkInterface.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerVirtualMachineInstanceNetworkInterface(
      ipv4AddressType: (() { final guardedValue = map['ipv4AddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6AddressType: (() { final guardedValue = map['ipv6AddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macAddressType: (() { final guardedValue = map['macAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
