// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_security_group_network.dart';
import 'custom_dns_config_properties_format.dart';
import 'extended_location.dart';
import 'private_endpoint_ipconfiguration.dart';
import 'private_link_service_connection.dart';
import 'subnet_network.dart';

/// {@template pulumi_network_private_endpoint_args_doc}
/// The set of arguments for PrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_network_private_endpoint_args_doc}
class PrivateEndpointArgs {
  /// Application security groups in which the private endpoint IP configuration is included.
  final pulumi.Input<List<ApplicationSecurityGroupNetwork>>? applicationSecurityGroups;
  /// An array of custom dns configurations.
  final pulumi.Input<List<CustomDnsConfigPropertiesFormat>>? customDnsConfigs;
  /// The custom name of the network interface attached to the private endpoint.
  final pulumi.Input<String>? customNetworkInterfaceName;
  /// The extended location of the load balancer.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// A list of IP configurations of the private endpoint. This will be used to map to the First Party Service's endpoints.
  final pulumi.Input<List<PrivateEndpointIPConfiguration>>? ipConfigurations;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// A grouping of information about the connection to the remote resource. Used when the network admin does not have access to approve connections to the remote resource.
  final pulumi.Input<List<PrivateLinkServiceConnection>>? manualPrivateLinkServiceConnections;
  /// The name of the private endpoint.
  final pulumi.Input<String>? privateEndpointName;
  /// A grouping of information about the connection to the remote resource.
  final pulumi.Input<List<PrivateLinkServiceConnection>>? privateLinkServiceConnections;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the subnet from which the private IP will be allocated.
  final pulumi.Input<SubnetNetwork>? subnet;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrivateEndpointArgs].
  /// [applicationSecurityGroups] Application security groups in which the private endpoint IP configuration is included.
  /// [customDnsConfigs] An array of custom dns configurations.
  /// [customNetworkInterfaceName] The custom name of the network interface attached to the private endpoint.
  /// [extendedLocation] The extended location of the load balancer.
  /// [id] Resource ID.
  /// [ipConfigurations] A list of IP configurations of the private endpoint. This will be used to map to the First Party Service's endpoints.
  /// [location] Resource location.
  /// [manualPrivateLinkServiceConnections] A grouping of information about the connection to the remote resource. Used when the network admin does not have access to approve connections to the remote resource.
  /// [privateEndpointName] The name of the private endpoint.
  /// [privateLinkServiceConnections] A grouping of information about the connection to the remote resource.
  /// [resourceGroupName] The name of the resource group.
  /// [subnet] The ID of the subnet from which the private IP will be allocated.
  /// [tags] Resource tags.
  PrivateEndpointArgs({
    this.applicationSecurityGroups,
    this.customDnsConfigs,
    this.customNetworkInterfaceName,
    this.extendedLocation,
    this.id,
    this.ipConfigurations,
    this.location,
    this.manualPrivateLinkServiceConnections,
    this.privateEndpointName,
    this.privateLinkServiceConnections,
    required this.resourceGroupName,
    this.subnet,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSecurityGroups': ?applicationSecurityGroups,
      'customDnsConfigs': ?pulumi.Input.mapOptionalInputValue<List<CustomDnsConfigPropertiesFormat>, List<Map<String, dynamic>>>(customDnsConfigs, (value) => pulumi.Input.encodeList<CustomDnsConfigPropertiesFormat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customNetworkInterfaceName': ?customNetworkInterfaceName,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'id': ?id,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointIPConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<PrivateEndpointIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'manualPrivateLinkServiceConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceConnection>, List<Map<String, dynamic>>>(manualPrivateLinkServiceConnections, (value) => pulumi.Input.encodeList<PrivateLinkServiceConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateEndpointName': ?privateEndpointName,
      'privateLinkServiceConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceConnection>, List<Map<String, dynamic>>>(privateLinkServiceConnections, (value) => pulumi.Input.encodeList<PrivateLinkServiceConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'subnet': ?subnet,
      'tags': ?tags,
    };
  }

  factory PrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointArgs(
      applicationSecurityGroups: map['applicationSecurityGroups'] == null ? null : ((map['applicationSecurityGroups']! as List).cast<ApplicationSecurityGroupNetwork>()).input(),
      customDnsConfigs: map['customDnsConfigs'] == null ? null : (pulumi.Input.decodeList<CustomDnsConfigPropertiesFormat>(map['customDnsConfigs']!, (value) => CustomDnsConfigPropertiesFormat.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customNetworkInterfaceName: map['customNetworkInterfaceName'] == null ? null : (map['customNetworkInterfaceName']! as String).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<PrivateEndpointIPConfiguration>(map['ipConfigurations']!, (value) => PrivateEndpointIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      manualPrivateLinkServiceConnections: map['manualPrivateLinkServiceConnections'] == null ? null : (pulumi.Input.decodeList<PrivateLinkServiceConnection>(map['manualPrivateLinkServiceConnections']!, (value) => PrivateLinkServiceConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateEndpointName: map['privateEndpointName'] == null ? null : (map['privateEndpointName']! as String).input(),
      privateLinkServiceConnections: map['privateLinkServiceConnections'] == null ? null : (pulumi.Input.decodeList<PrivateLinkServiceConnection>(map['privateLinkServiceConnections']!, (value) => PrivateLinkServiceConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnet: map['subnet'] == null ? null : (map['subnet']! as SubnetNetwork).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

