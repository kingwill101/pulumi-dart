// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_ip_configuration.dart';
import 'endpoint_private_dns_zone_group.dart';
import 'endpoint_private_service_connection.dart';

/// {@template pulumi_privatelink_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_privatelink_endpoint_endpoint_args_doc}
class EndpointArgs {
  /// The custom name of the network interface attached to the private endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customNetworkInterfaceName;
  /// One or more `ip_configuration` blocks as defined below. This allows a static IP address to be set for this Private Endpoint, otherwise an address is dynamically allocated from the Subnet.
  final pulumi.Input<List<EndpointIpConfiguration>>? ipConfigurations;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `private_dns_zone_group` block as defined below.
  final pulumi.Input<EndpointPrivateDnsZoneGroup>? privateDnsZoneGroup;
  /// A `private_service_connection` block as defined below.
  final pulumi.Input<EndpointPrivateServiceConnection> privateServiceConnection;
  /// Specifies the Name of the Resource Group within which the Private Endpoint should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EndpointArgs].
  /// [customNetworkInterfaceName] The custom name of the network interface attached to the private endpoint. Changing this forces a new resource to be created.
  /// [ipConfigurations] One or more `ip_configuration` blocks as defined below. This allows a static IP address to be set for this Private Endpoint, otherwise an address is dynamically allocated from the Subnet.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  /// [privateDnsZoneGroup] A `private_dns_zone_group` block as defined below.
  /// [privateServiceConnection] A `private_service_connection` block as defined below.
  /// [resourceGroupName] Specifies the Name of the Resource Group within which the Private Endpoint should exist. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  EndpointArgs({
    this.customNetworkInterfaceName,
    this.ipConfigurations,
    this.location,
    this.name,
    this.privateDnsZoneGroup,
    required this.privateServiceConnection,
    required this.resourceGroupName,
    required this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customNetworkInterfaceName': ?customNetworkInterfaceName,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<EndpointIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<EndpointIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'privateDnsZoneGroup': ?pulumi.Input.mapOptionalInputValue<EndpointPrivateDnsZoneGroup, Map<String, dynamic>>(privateDnsZoneGroup, (value) => value.toMap()),
      'privateServiceConnection': pulumi.Input.mapInputValue<EndpointPrivateServiceConnection, Map<String, dynamic>>(privateServiceConnection, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subnetId': subnetId,
      'tags': ?tags,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      customNetworkInterfaceName: map['customNetworkInterfaceName'] == null ? null : (map['customNetworkInterfaceName'] as String).input(),
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<EndpointIpConfiguration>(map['ipConfigurations'], (value) => EndpointIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      privateDnsZoneGroup: map['privateDnsZoneGroup'] == null ? null : (EndpointPrivateDnsZoneGroup.fromMap((map['privateDnsZoneGroup'] as Map).cast<String, dynamic>())).input(),
      privateServiceConnection: (EndpointPrivateServiceConnection.fromMap((map['privateServiceConnection'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

