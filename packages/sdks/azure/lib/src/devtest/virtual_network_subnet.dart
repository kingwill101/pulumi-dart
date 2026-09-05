// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_subnet_shared_public_ip_address.dart';

class VirtualNetworkSubnet {
  /// Specifies the name of the Dev Test Virtual Network. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A `sharedPublicIpAddress` block as defined below.
  final pulumi.Input<VirtualNetworkSubnetSharedPublicIpAddress?>? sharedPublicIpAddress;
  /// Can this subnet be used for creating Virtual Machines? Possible values are `Allow`, `Default` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String?>? useInVirtualMachineCreation;
  /// Can Virtual Machines in this Subnet use Public IP Addresses? Possible values are `Allow`, `Default` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String?>? usePublicIpAddress;

  /// Creates a new [VirtualNetworkSubnet].
  /// [name] Specifies the name of the Dev Test Virtual Network. Changing this forces a new resource to be created.
  /// [sharedPublicIpAddress] A `sharedPublicIpAddress` block as defined below.
  /// [useInVirtualMachineCreation] Can this subnet be used for creating Virtual Machines? Possible values are `Allow`, `Default` and `Deny`. Defaults to `Allow`.
  /// [usePublicIpAddress] Can Virtual Machines in this Subnet use Public IP Addresses? Possible values are `Allow`, `Default` and `Deny`. Defaults to `Allow`.
  const VirtualNetworkSubnet({
    this.name,
    this.sharedPublicIpAddress,
    this.useInVirtualMachineCreation,
    this.usePublicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sharedPublicIpAddress': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkSubnetSharedPublicIpAddress, Map<String, dynamic>>(sharedPublicIpAddress, (value) => value.toMap()),
      'useInVirtualMachineCreation': ?useInVirtualMachineCreation,
      'usePublicIpAddress': ?usePublicIpAddress,
    };
  }

  factory VirtualNetworkSubnet.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnet(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedPublicIpAddress: (() { final guardedValue = map['sharedPublicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkSubnetSharedPublicIpAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useInVirtualMachineCreation: (() { final guardedValue = map['useInVirtualMachineCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usePublicIpAddress: (() { final guardedValue = map['usePublicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
