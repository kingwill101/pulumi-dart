// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_custom_dns_config.dart';
import 'endpoint_ip_configuration.dart';
import 'endpoint_network_interface.dart';
import 'endpoint_private_dns_zone_config.dart';
import 'endpoint_private_dns_zone_group.dart';
import 'endpoint_private_service_connection.dart';

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// A `customDnsConfigs` block as defined below.
  final pulumi.Input<List<EndpointCustomDnsConfig>>? customDnsConfigs;
  /// The custom name of the network interface attached to the private endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customNetworkInterfaceName;
  /// One or more `ipConfiguration` blocks as defined below. This allows a static IP address to be set for this Private Endpoint, otherwise an address is dynamically allocated from the Subnet.
  final pulumi.Input<List<EndpointIpConfiguration>>? ipConfigurations;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `networkInterface` block as defined below.
  final pulumi.Input<List<EndpointNetworkInterface>>? networkInterfaces;
  /// A `privateDnsZoneConfigs` block as defined below.
  final pulumi.Input<List<EndpointPrivateDnsZoneConfig>>? privateDnsZoneConfigs;
  /// A `privateDnsZoneGroup` block as defined below.
  final pulumi.Input<EndpointPrivateDnsZoneGroup>? privateDnsZoneGroup;
  /// A `privateServiceConnection` block as defined below.
  final pulumi.Input<EndpointPrivateServiceConnection>? privateServiceConnection;
  /// Specifies the Name of the Resource Group within which the Private Endpoint should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EndpointState].
  /// [customDnsConfigs] A `customDnsConfigs` block as defined below.
  /// [customNetworkInterfaceName] The custom name of the network interface attached to the private endpoint. Changing this forces a new resource to be created.
  /// [ipConfigurations] One or more `ipConfiguration` blocks as defined below. This allows a static IP address to be set for this Private Endpoint, otherwise an address is dynamically allocated from the Subnet.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  /// [networkInterfaces] A `networkInterface` block as defined below.
  /// [privateDnsZoneConfigs] A `privateDnsZoneConfigs` block as defined below.
  /// [privateDnsZoneGroup] A `privateDnsZoneGroup` block as defined below.
  /// [privateServiceConnection] A `privateServiceConnection` block as defined below.
  /// [resourceGroupName] Specifies the Name of the Resource Group within which the Private Endpoint should exist. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const EndpointState({
    this.customDnsConfigs,
    this.customNetworkInterfaceName,
    this.ipConfigurations,
    this.location,
    this.name,
    this.networkInterfaces,
    this.privateDnsZoneConfigs,
    this.privateDnsZoneGroup,
    this.privateServiceConnection,
    this.resourceGroupName,
    this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDnsConfigs': ?pulumi.Input.mapOptionalInputValue<List<EndpointCustomDnsConfig>, List<Map<String, dynamic>>>(customDnsConfigs, (value) => pulumi.Input.encodeList<EndpointCustomDnsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customNetworkInterfaceName': ?customNetworkInterfaceName,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<EndpointIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<EndpointIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<EndpointNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<EndpointNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateDnsZoneConfigs': ?pulumi.Input.mapOptionalInputValue<List<EndpointPrivateDnsZoneConfig>, List<Map<String, dynamic>>>(privateDnsZoneConfigs, (value) => pulumi.Input.encodeList<EndpointPrivateDnsZoneConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateDnsZoneGroup': ?pulumi.Input.mapOptionalInputValue<EndpointPrivateDnsZoneGroup, Map<String, dynamic>>(privateDnsZoneGroup, (value) => value.toMap()),
      'privateServiceConnection': ?pulumi.Input.mapOptionalInputValue<EndpointPrivateServiceConnection, Map<String, dynamic>>(privateServiceConnection, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'subnetId': ?subnetId,
      'tags': ?tags,
    };
  }

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      customDnsConfigs: (() { final guardedValue = map['customDnsConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointCustomDnsConfig>(guardedValue, (value) => EndpointCustomDnsConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customNetworkInterfaceName: (() { final guardedValue = map['customNetworkInterfaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointIpConfiguration>(guardedValue, (value) => EndpointIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointNetworkInterface>(guardedValue, (value) => EndpointNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateDnsZoneConfigs: (() { final guardedValue = map['privateDnsZoneConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointPrivateDnsZoneConfig>(guardedValue, (value) => EndpointPrivateDnsZoneConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateDnsZoneGroup: (() { final guardedValue = map['privateDnsZoneGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointPrivateDnsZoneGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateServiceConnection: (() { final guardedValue = map['privateServiceConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointPrivateServiceConnection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
