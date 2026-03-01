// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_virtual_machine_scale_set_network_interface_ip_configuration.dart';

class LinuxVirtualMachineScaleSetNetworkInterface {
  /// Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections` and `Floating`.
  ///
  /// > **Note:** `auxiliary_mode` is in **Preview** and requires that the prerequisites are enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites).
  final String? auxiliaryMode;
  /// Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A1`, `A2`, `A4` and `A8`.
  ///
  /// > **Note:** `auxiliary_sku` is in **Preview** and requires that the prerequisites are enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites).
  final String? auxiliarySku;
  /// A list of IP Addresses of DNS Servers which should be assigned to the Network Interface.
  final List<String>? dnsServers;
  /// Does this Network Interface support Accelerated Networking? Defaults to `false`.
  final bool? enableAcceleratedNetworking;
  /// Does this Network Interface support IP Forwarding? Defaults to `false`.
  final bool? enableIpForwarding;
  /// One or more `ip_configuration` blocks as defined above.
  final List<LinuxVirtualMachineScaleSetNetworkInterfaceIpConfiguration> ipConfigurations;
  /// The Name which should be used for this Network Interface. Changing this forces a new resource to be created.
  final String name;
  /// The ID of a Network Security Group which should be assigned to this Network Interface.
  final String? networkSecurityGroupId;
  /// Is this the Primary IP Configuration?
  ///
  /// > **Note:** If multiple `network_interface` blocks are specified, one must be set to `primary`.
  final bool? primary;

  /// Creates a new [LinuxVirtualMachineScaleSetNetworkInterface].
  /// [auxiliaryMode] Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections` and `Floating`.
  /// [auxiliarySku] Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A1`, `A2`, `A4` and `A8`.
  /// [dnsServers] A list of IP Addresses of DNS Servers which should be assigned to the Network Interface.
  /// [enableAcceleratedNetworking] Does this Network Interface support Accelerated Networking? Defaults to `false`.
  /// [enableIpForwarding] Does this Network Interface support IP Forwarding? Defaults to `false`.
  /// [ipConfigurations] One or more `ip_configuration` blocks as defined above.
  /// [name] The Name which should be used for this Network Interface. Changing this forces a new resource to be created.
  /// [networkSecurityGroupId] The ID of a Network Security Group which should be assigned to this Network Interface.
  /// [primary] Is this the Primary IP Configuration?
  LinuxVirtualMachineScaleSetNetworkInterface({
    this.auxiliaryMode,
    this.auxiliarySku,
    this.dnsServers,
    this.enableAcceleratedNetworking,
    this.enableIpForwarding,
    required this.ipConfigurations,
    required this.name,
    this.networkSecurityGroupId,
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryMode': ?auxiliaryMode,
      'auxiliarySku': ?auxiliarySku,
      'dnsServers': ?dnsServers,
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'enableIpForwarding': ?enableIpForwarding,
      'ipConfigurations': pulumi.Input.encodeList<LinuxVirtualMachineScaleSetNetworkInterfaceIpConfiguration, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'name': name,
      'networkSecurityGroupId': ?networkSecurityGroupId,
      'primary': ?primary,
    };
  }

  factory LinuxVirtualMachineScaleSetNetworkInterface.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetNetworkInterface(
      auxiliaryMode: map['auxiliaryMode'] == null ? null : map['auxiliaryMode'] as String,
      auxiliarySku: map['auxiliarySku'] == null ? null : map['auxiliarySku'] as String,
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] == null ? null : map['enableAcceleratedNetworking'] as bool,
      enableIpForwarding: map['enableIpForwarding'] == null ? null : map['enableIpForwarding'] as bool,
      ipConfigurations: pulumi.Input.decodeList<LinuxVirtualMachineScaleSetNetworkInterfaceIpConfiguration>(map['ipConfigurations'], (value) => LinuxVirtualMachineScaleSetNetworkInterfaceIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkSecurityGroupId: map['networkSecurityGroupId'] == null ? null : map['networkSecurityGroupId'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
    );
  }
}

