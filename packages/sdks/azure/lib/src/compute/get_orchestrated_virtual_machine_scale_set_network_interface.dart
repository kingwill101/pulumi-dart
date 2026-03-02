// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_orchestrated_virtual_machine_scale_set_network_interface_ip_configuration.dart';

class GetOrchestratedVirtualMachineScaleSetNetworkInterface {
  /// Is accelerated networking enabled?
  final pulumi.Input<bool> acceleratedNetworkingEnabled;
  /// An array of the DNS servers in use.
  final pulumi.Input<List<String>> dnsServers;
  /// An `ip_configuration` block as documented below.
  final pulumi.Input<List<GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration>> ipConfigurations;
  /// Is IP forwarding enabled?
  final pulumi.Input<bool> ipForwardingEnabled;
  /// The name of this Orchestrated Virtual Machine Scale Set.
  final pulumi.Input<String> name;
  /// The identifier for the network security group.
  final pulumi.Input<String> networkSecurityGroupId;
  /// If this ip_configuration is the primary one.
  final pulumi.Input<bool> primary;

  /// Creates a new [GetOrchestratedVirtualMachineScaleSetNetworkInterface].
  /// [acceleratedNetworkingEnabled] Is accelerated networking enabled?
  /// [dnsServers] An array of the DNS servers in use.
  /// [ipConfigurations] An `ip_configuration` block as documented below.
  /// [ipForwardingEnabled] Is IP forwarding enabled?
  /// [name] The name of this Orchestrated Virtual Machine Scale Set.
  /// [networkSecurityGroupId] The identifier for the network security group.
  /// [primary] If this ip_configuration is the primary one.
  GetOrchestratedVirtualMachineScaleSetNetworkInterface({
    required this.acceleratedNetworkingEnabled,
    required this.dnsServers,
    required this.ipConfigurations,
    required this.ipForwardingEnabled,
    required this.name,
    required this.networkSecurityGroupId,
    required this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedNetworkingEnabled': acceleratedNetworkingEnabled,
      'dnsServers': dnsServers,
      'ipConfigurations': pulumi.Input.mapInputValue<List<GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipForwardingEnabled': ipForwardingEnabled,
      'name': name,
      'networkSecurityGroupId': networkSecurityGroupId,
      'primary': primary,
    };
  }

  factory GetOrchestratedVirtualMachineScaleSetNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetOrchestratedVirtualMachineScaleSetNetworkInterface(
      acceleratedNetworkingEnabled: (map['acceleratedNetworkingEnabled'] as bool).input(),
      dnsServers: ((map['dnsServers'] as List).cast<String>()).input(),
      ipConfigurations: (pulumi.Input.decodeList<GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration>(map['ipConfigurations'], (value) => GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipForwardingEnabled: (map['ipForwardingEnabled'] as bool).input(),
      name: (map['name'] as String).input(),
      networkSecurityGroupId: (map['networkSecurityGroupId'] as String).input(),
      primary: (map['primary'] as bool).input(),
    );
  }
}

