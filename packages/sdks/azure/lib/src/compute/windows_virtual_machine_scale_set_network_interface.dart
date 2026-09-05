// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_scale_set_network_interface_ip_configuration.dart';

class WindowsVirtualMachineScaleSetNetworkInterface {
  /// Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections` and `Floating`.
  ///
  /// &gt; **Note:** `auxiliaryMode` is in **Preview** and requires that the prerequisites are enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites).
  final pulumi.Input<String?>? auxiliaryMode;
  /// Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A1`, `A2`, `A4` and `A8`.
  ///
  /// &gt; **Note:** `auxiliarySku` is in **Preview** and requires that the prerequisites are enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites).
  final pulumi.Input<String?>? auxiliarySku;
  /// A list of IP Addresses of DNS Servers which should be assigned to the Network Interface.
  final pulumi.Input<List<String>?>? dnsServers;
  /// Does this Network Interface support Accelerated Networking? Defaults to `false`.
  final pulumi.Input<bool?>? enableAcceleratedNetworking;
  /// Does this Network Interface support IP Forwarding? Defaults to `false`.
  final pulumi.Input<bool?>? enableIpForwarding;
  /// One or more `ipConfiguration` blocks as defined above.
  final pulumi.Input<List<WindowsVirtualMachineScaleSetNetworkInterfaceIpConfiguration>> ipConfigurations;
  /// The Name which should be used for this Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// The ID of a Network Security Group which should be assigned to this Network Interface.
  final pulumi.Input<String?>? networkSecurityGroupId;
  /// Is this the Primary IP Configuration?
  ///
  /// &gt; **Note:** If multiple `networkInterface` blocks are specified, one must be set to `primary`.
  final pulumi.Input<bool?>? primary;

  /// Creates a new [WindowsVirtualMachineScaleSetNetworkInterface].
  /// [auxiliaryMode] Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections` and `Floating`.
  /// [auxiliarySku] Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A1`, `A2`, `A4` and `A8`.
  /// [dnsServers] A list of IP Addresses of DNS Servers which should be assigned to the Network Interface.
  /// [enableAcceleratedNetworking] Does this Network Interface support Accelerated Networking? Defaults to `false`.
  /// [enableIpForwarding] Does this Network Interface support IP Forwarding? Defaults to `false`.
  /// [ipConfigurations] One or more `ipConfiguration` blocks as defined above.
  /// [name] The Name which should be used for this Network Interface. Changing this forces a new resource to be created.
  /// [networkSecurityGroupId] The ID of a Network Security Group which should be assigned to this Network Interface.
  /// [primary] Is this the Primary IP Configuration?
  const WindowsVirtualMachineScaleSetNetworkInterface({
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
      auxiliaryMode: (() { final guardedValue = map['auxiliaryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      auxiliarySku: (() { final guardedValue = map['auxiliarySku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableAcceleratedNetworking: (() { final guardedValue = map['enableAcceleratedNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableIpForwarding: (() { final guardedValue = map['enableIpForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsVirtualMachineScaleSetNetworkInterfaceIpConfiguration>(map['ipConfigurations']!, (value) => WindowsVirtualMachineScaleSetNetworkInterfaceIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkSecurityGroupId: (() { final guardedValue = map['networkSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
