// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_ip_configuration.dart';

/// Input properties used for looking up and filtering NetworkInterface resources.
class NetworkInterfaceState {
  /// Should Accelerated Networking be enabled? Defaults to `false`.
  ///
  /// > **Note:** Only certain Virtual Machine sizes are supported for Accelerated Networking - [more information can be found in this document](https://docs.microsoft.com/azure/virtual-network/create-vm-accelerated-networking-cli).
  ///
  /// > **Note:** To use Accelerated Networking in an Availability Set, the Availability Set must be deployed onto an Accelerated Networking enabled cluster.
  final pulumi.Input<bool>? acceleratedNetworkingEnabled;
  /// If the Virtual Machine using this Network Interface is part of an Availability Set, then this list will have the union of all DNS servers from all Network Interfaces that are part of the Availability Set.
  final pulumi.Input<List<String>>? appliedDnsServers;
  /// Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections`, `Floating`, `MaxConnections` and `None`.
  ///
  /// > **Note:** `auxiliary_mode` is in **Preview** and requires that the preview is enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites).
  final pulumi.Input<String>? auxiliaryMode;
  /// Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A8`, `A4`, `A1`, `A2` and `None`.
  ///
  /// > **Note:** `auxiliary_sku` is in **Preview** and requires that the preview is enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites).
  final pulumi.Input<String>? auxiliarySku;
  /// A list of IP Addresses defining the DNS Servers which should be used for this Network Interface.
  ///
  /// > **Note:** Configuring DNS Servers on the Network Interface will override the DNS Servers defined on the Virtual Network.
  final pulumi.Input<List<String>>? dnsServers;
  /// Specifies the Edge Zone within the Azure Region where this Network Interface should exist. Changing this forces a new Network Interface to be created.
  final pulumi.Input<String>? edgeZone;
  /// The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network.
  final pulumi.Input<String>? internalDnsNameLabel;
  /// Even if `internal_dns_name_label` is not specified, a DNS entry is created for the primary NIC of the VM. This DNS name can be constructed by concatenating the VM name with the value of `internal_domain_name_suffix`.
  final pulumi.Input<String>? internalDomainNameSuffix;
  /// One or more `ip_configuration` blocks as defined below.
  final pulumi.Input<List<NetworkInterfaceIpConfiguration>>? ipConfigurations;
  /// Should IP Forwarding be enabled? Defaults to `false`.
  final pulumi.Input<bool>? ipForwardingEnabled;
  /// The location where the Network Interface should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The Media Access Control (MAC) Address of the Network Interface.
  final pulumi.Input<String>? macAddress;
  /// The name of the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The first private IP address of the network interface.
  final pulumi.Input<String>? privateIpAddress;
  /// The private IP addresses of the network interface.
  final pulumi.Input<List<String>>? privateIpAddresses;
  /// The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Machine which this Network Interface is connected to.
  final pulumi.Input<String>? virtualMachineId;

  /// Creates a new [NetworkInterfaceState].
  /// [acceleratedNetworkingEnabled] Should Accelerated Networking be enabled? Defaults to `false`.
  /// [appliedDnsServers] If the Virtual Machine using this Network Interface is part of an Availability Set, then this list will have the union of all DNS servers from all Network Interfaces that are part of the Availability Set.
  /// [auxiliaryMode] Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections`, `Floating`, `MaxConnections` and `None`.
  /// [auxiliarySku] Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A8`, `A4`, `A1`, `A2` and `None`.
  /// [dnsServers] A list of IP Addresses defining the DNS Servers which should be used for this Network Interface.
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Network Interface should exist. Changing this forces a new Network Interface to be created.
  /// [internalDnsNameLabel] The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network.
  /// [internalDomainNameSuffix] Even if `internal_dns_name_label` is not specified, a DNS entry is created for the primary NIC of the VM. This DNS name can be constructed by concatenating the VM name with the value of `internal_domain_name_suffix`.
  /// [ipConfigurations] One or more `ip_configuration` blocks as defined below.
  /// [ipForwardingEnabled] Should IP Forwarding be enabled? Defaults to `false`.
  /// [location] The location where the Network Interface should exist. Changing this forces a new resource to be created.
  /// [macAddress] The Media Access Control (MAC) Address of the Network Interface.
  /// [name] The name of the Network Interface. Changing this forces a new resource to be created.
  /// [privateIpAddress] The first private IP address of the network interface.
  /// [privateIpAddresses] The private IP addresses of the network interface.
  /// [resourceGroupName] The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [virtualMachineId] The ID of the Virtual Machine which this Network Interface is connected to.
  NetworkInterfaceState({
    pulumi.Output<bool>? acceleratedNetworkingEnabled,
    pulumi.Output<List<String>>? appliedDnsServers,
    pulumi.Output<String>? auxiliaryMode,
    pulumi.Output<String>? auxiliarySku,
    pulumi.Output<List<String>>? dnsServers,
    pulumi.Output<String>? edgeZone,
    pulumi.Output<String>? internalDnsNameLabel,
    pulumi.Output<String>? internalDomainNameSuffix,
    pulumi.Output<List<NetworkInterfaceIpConfiguration>>? ipConfigurations,
    pulumi.Output<bool>? ipForwardingEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? macAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? privateIpAddress,
    pulumi.Output<List<String>>? privateIpAddresses,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualMachineId,
  }) :
      acceleratedNetworkingEnabled = pulumi.Input.asOptionalInput<bool>(acceleratedNetworkingEnabled),
      appliedDnsServers = pulumi.Input.asOptionalInput<List<String>>(appliedDnsServers),
      auxiliaryMode = pulumi.Input.asOptionalInput<String>(auxiliaryMode),
      auxiliarySku = pulumi.Input.asOptionalInput<String>(auxiliarySku),
      dnsServers = pulumi.Input.asOptionalInput<List<String>>(dnsServers),
      edgeZone = pulumi.Input.asOptionalInput<String>(edgeZone),
      internalDnsNameLabel = pulumi.Input.asOptionalInput<String>(internalDnsNameLabel),
      internalDomainNameSuffix = pulumi.Input.asOptionalInput<String>(internalDomainNameSuffix),
      ipConfigurations = pulumi.Input.asOptionalInput<List<NetworkInterfaceIpConfiguration>>(ipConfigurations),
      ipForwardingEnabled = pulumi.Input.asOptionalInput<bool>(ipForwardingEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      macAddress = pulumi.Input.asOptionalInput<String>(macAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateIpAddress = pulumi.Input.asOptionalInput<String>(privateIpAddress),
      privateIpAddresses = pulumi.Input.asOptionalInput<List<String>>(privateIpAddresses),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualMachineId = pulumi.Input.asOptionalInput<String>(virtualMachineId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedNetworkingEnabled': ?acceleratedNetworkingEnabled,
      'appliedDnsServers': ?appliedDnsServers,
      'auxiliaryMode': ?auxiliaryMode,
      'auxiliarySku': ?auxiliarySku,
      'dnsServers': ?dnsServers,
      'edgeZone': ?edgeZone,
      'internalDnsNameLabel': ?internalDnsNameLabel,
      'internalDomainNameSuffix': ?internalDomainNameSuffix,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipForwardingEnabled': ?ipForwardingEnabled,
      'location': ?location,
      'macAddress': ?macAddress,
      'name': ?name,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddresses': ?privateIpAddresses,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory NetworkInterfaceState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceState(
      acceleratedNetworkingEnabled: map['acceleratedNetworkingEnabled'] == null ? null : pulumi.Output.create<bool>(map['acceleratedNetworkingEnabled'] as bool),
      appliedDnsServers: map['appliedDnsServers'] == null ? null : pulumi.Output.create<List<String>>((map['appliedDnsServers'] as List).cast<String>()),
      auxiliaryMode: map['auxiliaryMode'] == null ? null : pulumi.Output.create<String>(map['auxiliaryMode'] as String),
      auxiliarySku: map['auxiliarySku'] == null ? null : pulumi.Output.create<String>(map['auxiliarySku'] as String),
      dnsServers: map['dnsServers'] == null ? null : pulumi.Output.create<List<String>>((map['dnsServers'] as List).cast<String>()),
      edgeZone: map['edgeZone'] == null ? null : pulumi.Output.create<String>(map['edgeZone'] as String),
      internalDnsNameLabel: map['internalDnsNameLabel'] == null ? null : pulumi.Output.create<String>(map['internalDnsNameLabel'] as String),
      internalDomainNameSuffix: map['internalDomainNameSuffix'] == null ? null : pulumi.Output.create<String>(map['internalDomainNameSuffix'] as String),
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Output.create<List<NetworkInterfaceIpConfiguration>>(pulumi.Input.decodeList<NetworkInterfaceIpConfiguration>(map['ipConfigurations'], (value) => NetworkInterfaceIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      ipForwardingEnabled: map['ipForwardingEnabled'] == null ? null : pulumi.Output.create<bool>(map['ipForwardingEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      macAddress: map['macAddress'] == null ? null : pulumi.Output.create<String>(map['macAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateIpAddress: map['privateIpAddress'] == null ? null : pulumi.Output.create<String>(map['privateIpAddress'] as String),
      privateIpAddresses: map['privateIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['privateIpAddresses'] as List).cast<String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualMachineId: map['virtualMachineId'] == null ? null : pulumi.Output.create<String>(map['virtualMachineId'] as String),
    );
  }
}

