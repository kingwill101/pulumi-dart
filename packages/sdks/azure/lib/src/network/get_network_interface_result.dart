// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interface_ip_configuration.dart';

/// Result data returned by getNetworkInterface.
class GetNetworkInterfaceResult {
  /// Indicates if accelerated networking is set on the specified Network Interface.
  final bool acceleratedNetworkingEnabled;
  /// List of DNS servers applied to the specified Network Interface.
  final List<String> appliedDnsServers;
  /// The list of DNS servers used by the specified Network Interface.
  final List<String> dnsServers;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The internal DNS name label of the specified Network Interface.
  final String internalDnsNameLabel;
  /// One or more `ipConfiguration` blocks as defined below.
  final List<GetNetworkInterfaceIpConfiguration> ipConfigurations;
  /// Indicate if IP forwarding is set on the specified Network Interface.
  final bool ipForwardingEnabled;
  /// The location of the specified Network Interface.
  final String location;
  /// The MAC address used by the specified Network Interface.
  final String macAddress;
  /// The name of the IP Configuration.
  final String name;
  /// The ID of the network security group associated to the specified Network Interface.
  final String networkSecurityGroupId;
  /// The Private IP Address assigned to this Network Interface.
  final String privateIpAddress;
  /// The list of private IP addresses associates to the specified Network Interface.
  final List<String> privateIpAddresses;
  final String resourceGroupName;
  /// List the tags associated to the specified Network Interface.
  final Map<String, String> tags;
  /// The ID of the virtual machine that the specified Network Interface is attached to.
  final String virtualMachineId;

  /// Creates a new [GetNetworkInterfaceResult].
  /// [acceleratedNetworkingEnabled] Indicates if accelerated networking is set on the specified Network Interface.
  /// [appliedDnsServers] List of DNS servers applied to the specified Network Interface.
  /// [dnsServers] The list of DNS servers used by the specified Network Interface.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internalDnsNameLabel] The internal DNS name label of the specified Network Interface.
  /// [ipConfigurations] One or more `ipConfiguration` blocks as defined below.
  /// [ipForwardingEnabled] Indicate if IP forwarding is set on the specified Network Interface.
  /// [location] The location of the specified Network Interface.
  /// [macAddress] The MAC address used by the specified Network Interface.
  /// [name] The name of the IP Configuration.
  /// [networkSecurityGroupId] The ID of the network security group associated to the specified Network Interface.
  /// [privateIpAddress] The Private IP Address assigned to this Network Interface.
  /// [privateIpAddresses] The list of private IP addresses associates to the specified Network Interface.
  /// [resourceGroupName] Required.
  /// [tags] List the tags associated to the specified Network Interface.
  /// [virtualMachineId] The ID of the virtual machine that the specified Network Interface is attached to.
  const GetNetworkInterfaceResult({
    required this.acceleratedNetworkingEnabled,
    required this.appliedDnsServers,
    required this.dnsServers,
    required this.id,
    required this.internalDnsNameLabel,
    required this.ipConfigurations,
    required this.ipForwardingEnabled,
    required this.location,
    required this.macAddress,
    required this.name,
    required this.networkSecurityGroupId,
    required this.privateIpAddress,
    required this.privateIpAddresses,
    required this.resourceGroupName,
    required this.tags,
    required this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedNetworkingEnabled': acceleratedNetworkingEnabled,
      'appliedDnsServers': appliedDnsServers,
      'dnsServers': dnsServers,
      'id': id,
      'internalDnsNameLabel': internalDnsNameLabel,
      'ipConfigurations': pulumi.Input.encodeList<GetNetworkInterfaceIpConfiguration, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'ipForwardingEnabled': ipForwardingEnabled,
      'location': location,
      'macAddress': macAddress,
      'name': name,
      'networkSecurityGroupId': networkSecurityGroupId,
      'privateIpAddress': privateIpAddress,
      'privateIpAddresses': privateIpAddresses,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'virtualMachineId': virtualMachineId,
    };
  }

  factory GetNetworkInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceResult(
      acceleratedNetworkingEnabled: map['acceleratedNetworkingEnabled'] as bool,
      appliedDnsServers: (map['appliedDnsServers'] as List).cast<String>(),
      dnsServers: (map['dnsServers'] as List).cast<String>(),
      id: map['id'] as String,
      internalDnsNameLabel: map['internalDnsNameLabel'] as String,
      ipConfigurations: pulumi.Input.decodeList<GetNetworkInterfaceIpConfiguration>(map['ipConfigurations']!, (value) => GetNetworkInterfaceIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      ipForwardingEnabled: map['ipForwardingEnabled'] as bool,
      location: map['location'] as String,
      macAddress: map['macAddress'] as String,
      name: map['name'] as String,
      networkSecurityGroupId: map['networkSecurityGroupId'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      privateIpAddresses: (map['privateIpAddresses'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualMachineId: map['virtualMachineId'] as String,
    );
  }
}
