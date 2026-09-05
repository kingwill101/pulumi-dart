// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interface_ip_configuration.dart';

/// Result data returned by getNetworkInterface.
class GetNetworkInterfaceResult {
  /// Indicates if accelerated networking is set on the specified Network Interface.
  final bool? acceleratedNetworkingEnabled;
  /// List of DNS servers applied to the specified Network Interface.
  final List<String>? appliedDnsServers;
  /// The list of DNS servers used by the specified Network Interface.
  final List<String>? dnsServers;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The internal DNS name label of the specified Network Interface.
  final String? internalDnsNameLabel;
  /// One or more `ipConfiguration` blocks as defined below.
  final List<GetNetworkInterfaceIpConfiguration>? ipConfigurations;
  /// Indicate if IP forwarding is set on the specified Network Interface.
  final bool? ipForwardingEnabled;
  /// The location of the specified Network Interface.
  final String? location;
  /// The MAC address used by the specified Network Interface.
  final String? macAddress;
  /// The name of the IP Configuration.
  final String? name;
  /// The ID of the network security group associated to the specified Network Interface.
  final String? networkSecurityGroupId;
  /// The Private IP Address assigned to this Network Interface.
  final String? privateIpAddress;
  /// The list of private IP addresses associates to the specified Network Interface.
  final List<String>? privateIpAddresses;
  final String? resourceGroupName;
  /// List the tags associated to the specified Network Interface.
  final Map<String, String>? tags;
  /// The ID of the virtual machine that the specified Network Interface is attached to.
  final String? virtualMachineId;

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
  /// [resourceGroupName] Optional.
  /// [tags] List the tags associated to the specified Network Interface.
  /// [virtualMachineId] The ID of the virtual machine that the specified Network Interface is attached to.
  const GetNetworkInterfaceResult({
    this.acceleratedNetworkingEnabled,
    this.appliedDnsServers,
    this.dnsServers,
    this.id,
    this.internalDnsNameLabel,
    this.ipConfigurations,
    this.ipForwardingEnabled,
    this.location,
    this.macAddress,
    this.name,
    this.networkSecurityGroupId,
    this.privateIpAddress,
    this.privateIpAddresses,
    this.resourceGroupName,
    this.tags,
    this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedNetworkingEnabled': ?acceleratedNetworkingEnabled,
      'appliedDnsServers': ?appliedDnsServers,
      'dnsServers': ?dnsServers,
      'id': ?id,
      'internalDnsNameLabel': ?internalDnsNameLabel,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInterfaceIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipForwardingEnabled': ?ipForwardingEnabled,
      'location': ?location,
      'macAddress': ?macAddress,
      'name': ?name,
      'networkSecurityGroupId': ?networkSecurityGroupId,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddresses': ?privateIpAddresses,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory GetNetworkInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceResult(
      acceleratedNetworkingEnabled: (() { final guardedValue = map['acceleratedNetworkingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      appliedDnsServers: (() { final guardedValue = map['appliedDnsServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internalDnsNameLabel: (() { final guardedValue = map['internalDnsNameLabel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInterfaceIpConfiguration>(guardedValue, (value) => GetNetworkInterfaceIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipForwardingEnabled: (() { final guardedValue = map['ipForwardingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkSecurityGroupId: (() { final guardedValue = map['networkSecurityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIpAddresses: (() { final guardedValue = map['privateIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      virtualMachineId: (() { final guardedValue = map['virtualMachineId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
