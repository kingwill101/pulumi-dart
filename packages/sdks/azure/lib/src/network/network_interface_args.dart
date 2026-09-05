// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_ip_configuration.dart';

/// {@template pulumi_network_network_interface_network_interface_args_doc}
/// The set of arguments for NetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_network_network_interface_network_interface_args_doc}
class NetworkInterfaceArgs {
  /// Should Accelerated Networking be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** Only certain Virtual Machine sizes are supported for Accelerated Networking - [more information can be found in this document](https://docs.microsoft.com/azure/virtual-network/create-vm-accelerated-networking-cli).
  ///
  /// &gt; **Note:** To use Accelerated Networking in an Availability Set, the Availability Set must be deployed onto an Accelerated Networking enabled cluster.
  final pulumi.Input<bool?>? acceleratedNetworkingEnabled;
  /// Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections`, `Floating`, `MaxConnections` and `None`.
  ///
  /// &gt; **Note:** `auxiliaryMode` is in **Preview** and requires that the preview is enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites).
  final pulumi.Input<String?>? auxiliaryMode;
  /// Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A8`, `A4`, `A1`, `A2` and `None`.
  ///
  /// &gt; **Note:** `auxiliarySku` is in **Preview** and requires that the preview is enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites).
  final pulumi.Input<String?>? auxiliarySku;
  /// A list of IP Addresses defining the DNS Servers which should be used for this Network Interface.
  ///
  /// &gt; **Note:** Configuring DNS Servers on the Network Interface will override the DNS Servers defined on the Virtual Network.
  final pulumi.Input<List<String>?>? dnsServers;
  /// Specifies the Edge Zone within the Azure Region where this Network Interface should exist. Changing this forces a new Network Interface to be created.
  final pulumi.Input<String?>? edgeZone;
  /// The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network.
  final pulumi.Input<String?>? internalDnsNameLabel;
  /// One or more `ipConfiguration` blocks as defined below.
  final pulumi.Input<List<NetworkInterfaceIpConfiguration>> ipConfigurations;
  /// Should IP Forwarding be enabled? Defaults to `false`.
  final pulumi.Input<bool?>? ipForwardingEnabled;
  /// The location where the Network Interface should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [NetworkInterfaceArgs].
  /// [acceleratedNetworkingEnabled] Should Accelerated Networking be enabled? Defaults to `false`.
  /// [auxiliaryMode] Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections`, `Floating`, `MaxConnections` and `None`.
  /// [auxiliarySku] Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A8`, `A4`, `A1`, `A2` and `None`.
  /// [dnsServers] A list of IP Addresses defining the DNS Servers which should be used for this Network Interface.
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Network Interface should exist. Changing this forces a new Network Interface to be created.
  /// [internalDnsNameLabel] The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network.
  /// [ipConfigurations] One or more `ipConfiguration` blocks as defined below.
  /// [ipForwardingEnabled] Should IP Forwarding be enabled? Defaults to `false`.
  /// [location] The location where the Network Interface should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Network Interface. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const NetworkInterfaceArgs({
    this.acceleratedNetworkingEnabled,
    this.auxiliaryMode,
    this.auxiliarySku,
    this.dnsServers,
    this.edgeZone,
    this.internalDnsNameLabel,
    required this.ipConfigurations,
    this.ipForwardingEnabled,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedNetworkingEnabled': ?acceleratedNetworkingEnabled,
      'auxiliaryMode': ?auxiliaryMode,
      'auxiliarySku': ?auxiliarySku,
      'dnsServers': ?dnsServers,
      'edgeZone': ?edgeZone,
      'internalDnsNameLabel': ?internalDnsNameLabel,
      'ipConfigurations': pulumi.Input.mapInputValue<List<NetworkInterfaceIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipForwardingEnabled': ?ipForwardingEnabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceArgs(
      acceleratedNetworkingEnabled: (() { final guardedValue = map['acceleratedNetworkingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      auxiliaryMode: (() { final guardedValue = map['auxiliaryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      auxiliarySku: (() { final guardedValue = map['auxiliarySku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      edgeZone: (() { final guardedValue = map['edgeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalDnsNameLabel: (() { final guardedValue = map['internalDnsNameLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceIpConfiguration>(map['ipConfigurations']!, (value) => NetworkInterfaceIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      ipForwardingEnabled: (() { final guardedValue = map['ipForwardingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
