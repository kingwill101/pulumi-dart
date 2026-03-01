// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_machine_scale_set_network_interface_ip_configuration.dart';

class GetVirtualMachineScaleSetNetworkInterface {
  /// The auxiliary mode for the network interface.
  final String auxiliaryMode;
  /// The auxiliary SKU for the network interface.
  final String auxiliarySku;
  /// An array of the DNS servers in use.
  final List<String> dnsServers;
  /// Whether accelerated networking is enabled.
  final bool enableAcceleratedNetworking;
  /// Whether IP forwarding is enabled on this NIC.
  final bool enableIpForwarding;
  /// An `ip_configuration` block as defined below.
  final List<GetVirtualMachineScaleSetNetworkInterfaceIpConfiguration> ipConfigurations;
  /// The name of this Virtual Machine Scale Set.
  final String name;
  /// The identifier for the network security group.
  final String networkSecurityGroupId;
  /// If this ip_configuration is the primary one.
  final bool primary;

  /// Creates a new [GetVirtualMachineScaleSetNetworkInterface].
  /// [auxiliaryMode] The auxiliary mode for the network interface.
  /// [auxiliarySku] The auxiliary SKU for the network interface.
  /// [dnsServers] An array of the DNS servers in use.
  /// [enableAcceleratedNetworking] Whether accelerated networking is enabled.
  /// [enableIpForwarding] Whether IP forwarding is enabled on this NIC.
  /// [ipConfigurations] An `ip_configuration` block as defined below.
  /// [name] The name of this Virtual Machine Scale Set.
  /// [networkSecurityGroupId] The identifier for the network security group.
  /// [primary] If this ip_configuration is the primary one.
  GetVirtualMachineScaleSetNetworkInterface({
    required this.auxiliaryMode,
    required this.auxiliarySku,
    required this.dnsServers,
    required this.enableAcceleratedNetworking,
    required this.enableIpForwarding,
    required this.ipConfigurations,
    required this.name,
    required this.networkSecurityGroupId,
    required this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryMode': auxiliaryMode,
      'auxiliarySku': auxiliarySku,
      'dnsServers': dnsServers,
      'enableAcceleratedNetworking': enableAcceleratedNetworking,
      'enableIpForwarding': enableIpForwarding,
      'ipConfigurations': pulumi.Input.encodeList<GetVirtualMachineScaleSetNetworkInterfaceIpConfiguration, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'name': name,
      'networkSecurityGroupId': networkSecurityGroupId,
      'primary': primary,
    };
  }

  factory GetVirtualMachineScaleSetNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetNetworkInterface(
      auxiliaryMode: map['auxiliaryMode'] as String,
      auxiliarySku: map['auxiliarySku'] as String,
      dnsServers: (map['dnsServers'] as List).cast<String>(),
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] as bool,
      enableIpForwarding: map['enableIpForwarding'] as bool,
      ipConfigurations: pulumi.Input.decodeList<GetVirtualMachineScaleSetNetworkInterfaceIpConfiguration>(map['ipConfigurations'], (value) => GetVirtualMachineScaleSetNetworkInterfaceIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkSecurityGroupId: map['networkSecurityGroupId'] as String,
      primary: map['primary'] as bool,
    );
  }
}

