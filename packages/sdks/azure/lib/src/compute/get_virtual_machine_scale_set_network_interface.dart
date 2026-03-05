// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_machine_scale_set_network_interface_ip_configuration.dart';

class GetVirtualMachineScaleSetNetworkInterface {
  /// The auxiliary mode for the network interface.
  final pulumi.Input<String> auxiliaryMode;
  /// The auxiliary SKU for the network interface.
  final pulumi.Input<String> auxiliarySku;
  /// An array of the DNS servers in use.
  final pulumi.Input<List<String>> dnsServers;
  /// Whether accelerated networking is enabled.
  final pulumi.Input<bool> enableAcceleratedNetworking;
  /// Whether IP forwarding is enabled on this NIC.
  final pulumi.Input<bool> enableIpForwarding;
  /// An `ip_configuration` block as defined below.
  final pulumi.Input<List<GetVirtualMachineScaleSetNetworkInterfaceIpConfiguration>> ipConfigurations;
  /// The name of this Virtual Machine Scale Set.
  final pulumi.Input<String> name;
  /// The identifier for the network security group.
  final pulumi.Input<String> networkSecurityGroupId;
  /// If this ip_configuration is the primary one.
  final pulumi.Input<bool> primary;

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
      'ipConfigurations': pulumi.Input.mapInputValue<List<GetVirtualMachineScaleSetNetworkInterfaceIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<GetVirtualMachineScaleSetNetworkInterfaceIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'networkSecurityGroupId': networkSecurityGroupId,
      'primary': primary,
    };
  }

  factory GetVirtualMachineScaleSetNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetNetworkInterface(
      auxiliaryMode: pulumi.Input.fromValue(map['auxiliaryMode'] as String),
      auxiliarySku: pulumi.Input.fromValue(map['auxiliarySku'] as String),
      dnsServers: pulumi.Input.fromValue((map['dnsServers'] as List).cast<String>()),
      enableAcceleratedNetworking: pulumi.Input.fromValue(map['enableAcceleratedNetworking'] as bool),
      enableIpForwarding: pulumi.Input.fromValue(map['enableIpForwarding'] as bool),
      ipConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualMachineScaleSetNetworkInterfaceIpConfiguration>(map['ipConfigurations']!, (value) => GetVirtualMachineScaleSetNetworkInterfaceIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkSecurityGroupId: pulumi.Input.fromValue(map['networkSecurityGroupId'] as String),
      primary: pulumi.Input.fromValue(map['primary'] as bool),
    );
  }
}

