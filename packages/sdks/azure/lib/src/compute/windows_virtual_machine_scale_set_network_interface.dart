// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_scale_set_network_interface_ip_configuration.dart';

class WindowsVirtualMachineScaleSetNetworkInterface {
  /// Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections` and `Floating`.
  ///
  /// > **Note:** `auxiliary_mode` is in **Preview** and requires that the prerequisites are enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites).
  final pulumi.Input<String>? auxiliaryMode;
  /// Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A1`, `A2`, `A4` and `A8`.
  ///
  /// > **Note:** `auxiliary_sku` is in **Preview** and requires that the prerequisites are enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites).
  final pulumi.Input<String>? auxiliarySku;
  /// A list of IP Addresses of DNS Servers which should be assigned to the Network Interface.
  final pulumi.Input<List<String>>? dnsServers;
  /// Does this Network Interface support Accelerated Networking? Defaults to `false`.
  final pulumi.Input<bool>? enableAcceleratedNetworking;
  /// Does this Network Interface support IP Forwarding? Defaults to `false`.
  final pulumi.Input<bool>? enableIpForwarding;
  /// One or more `ip_configuration` blocks as defined above.
  final pulumi.Input<List<WindowsVirtualMachineScaleSetNetworkInterfaceIpConfiguration>> ipConfigurations;
  /// The Name which should be used for this Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// The ID of a Network Security Group which should be assigned to this Network Interface.
  final pulumi.Input<String>? networkSecurityGroupId;
  /// Is this the Primary IP Configuration?
  ///
  /// > **Note:** If multiple `network_interface` blocks are specified, one must be set to `primary`.
  final pulumi.Input<bool>? primary;

  /// Creates a new [WindowsVirtualMachineScaleSetNetworkInterface].
  /// [auxiliaryMode] Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections` and `Floating`.
  /// [auxiliarySku] Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A1`, `A2`, `A4` and `A8`.
  /// [dnsServers] A list of IP Addresses of DNS Servers which should be assigned to the Network Interface.
  /// [enableAcceleratedNetworking] Does this Network Interface support Accelerated Networking? Defaults to `false`.
  /// [enableIpForwarding] Does this Network Interface support IP Forwarding? Defaults to `false`.
  /// [ipConfigurations] One or more `ip_configuration` blocks as defined above.
  /// [name] The Name which should be used for this Network Interface. Changing this forces a new resource to be created.
  /// [networkSecurityGroupId] The ID of a Network Security Group which should be assigned to this Network Interface.
  /// [primary] Is this the Primary IP Configuration?
  WindowsVirtualMachineScaleSetNetworkInterface({
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
      'ipConfigurations': pulumi.Input.mapInputValue<List<WindowsVirtualMachineScaleSetNetworkInterfaceIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<WindowsVirtualMachineScaleSetNetworkInterfaceIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'networkSecurityGroupId': ?networkSecurityGroupId,
      'primary': ?primary,
    };
  }

  factory WindowsVirtualMachineScaleSetNetworkInterface.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetNetworkInterface(
      auxiliaryMode: map['auxiliaryMode'] == null ? null : (map['auxiliaryMode'] as String).input(),
      auxiliarySku: map['auxiliarySku'] == null ? null : (map['auxiliarySku'] as String).input(),
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers'] as List).cast<String>()).input(),
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] == null ? null : (map['enableAcceleratedNetworking'] as bool).input(),
      enableIpForwarding: map['enableIpForwarding'] == null ? null : (map['enableIpForwarding'] as bool).input(),
      ipConfigurations: (pulumi.Input.decodeList<WindowsVirtualMachineScaleSetNetworkInterfaceIpConfiguration>(map['ipConfigurations'], (value) => WindowsVirtualMachineScaleSetNetworkInterfaceIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      networkSecurityGroupId: map['networkSecurityGroupId'] == null ? null : (map['networkSecurityGroupId'] as String).input(),
      primary: map['primary'] == null ? null : (map['primary'] as bool).input(),
    );
  }
}

