// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_security_group_response.dart';
import 'custom_dns_config_properties_format_response.dart';
import 'extended_location_response.dart';
import 'network_interface_response.dart';
import 'private_endpoint_ipconfiguration_response.dart';
import 'private_link_service_connection_response.dart';
import 'subnet_response.dart';

/// Result data returned by getPrivateEndpoint.
class GetPrivateEndpointResult {
  /// Application security groups in which the private endpoint IP configuration is included.
  final List<ApplicationSecurityGroupResponse>? applicationSecurityGroups;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// An array of custom dns configurations.
  final List<CustomDnsConfigPropertiesFormatResponse>? customDnsConfigs;
  /// The custom name of the network interface attached to the private endpoint.
  final String? customNetworkInterfaceName;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The extended location of the load balancer.
  final ExtendedLocationResponse? extendedLocation;
  /// Resource ID.
  final String? id;
  /// A list of IP configurations of the private endpoint. This will be used to map to the First Party Service's endpoints.
  final List<PrivateEndpointIPConfigurationResponse>? ipConfigurations;
  /// Resource location.
  final String? location;
  /// A grouping of information about the connection to the remote resource. Used when the network admin does not have access to approve connections to the remote resource.
  final List<PrivateLinkServiceConnectionResponse>? manualPrivateLinkServiceConnections;
  /// Resource name.
  final String name;
  /// An array of references to the network interfaces created for this private endpoint.
  final List<NetworkInterfaceResponse> networkInterfaces;
  /// A grouping of information about the connection to the remote resource.
  final List<PrivateLinkServiceConnectionResponse>? privateLinkServiceConnections;
  /// The provisioning state of the private endpoint resource.
  final String provisioningState;
  /// The ID of the subnet from which the private IP will be allocated.
  final SubnetResponse? subnet;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetPrivateEndpointResult].
  /// [applicationSecurityGroups] Application security groups in which the private endpoint IP configuration is included.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customDnsConfigs] An array of custom dns configurations.
  /// [customNetworkInterfaceName] The custom name of the network interface attached to the private endpoint.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [extendedLocation] The extended location of the load balancer.
  /// [id] Resource ID.
  /// [ipConfigurations] A list of IP configurations of the private endpoint. This will be used to map to the First Party Service's endpoints.
  /// [location] Resource location.
  /// [manualPrivateLinkServiceConnections] A grouping of information about the connection to the remote resource. Used when the network admin does not have access to approve connections to the remote resource.
  /// [name] Resource name.
  /// [networkInterfaces] An array of references to the network interfaces created for this private endpoint.
  /// [privateLinkServiceConnections] A grouping of information about the connection to the remote resource.
  /// [provisioningState] The provisioning state of the private endpoint resource.
  /// [subnet] The ID of the subnet from which the private IP will be allocated.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetPrivateEndpointResult({
    this.applicationSecurityGroups,
    required this.azureApiVersion,
    this.customDnsConfigs,
    this.customNetworkInterfaceName,
    required this.etag,
    this.extendedLocation,
    this.id,
    this.ipConfigurations,
    this.location,
    this.manualPrivateLinkServiceConnections,
    required this.name,
    required this.networkInterfaces,
    this.privateLinkServiceConnections,
    required this.provisioningState,
    this.subnet,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSecurityGroups': ?applicationSecurityGroups == null ? null : pulumi.Input.encodeList<ApplicationSecurityGroupResponse, Map<String, dynamic>>(applicationSecurityGroups!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'customDnsConfigs': ?customDnsConfigs == null ? null : pulumi.Input.encodeList<CustomDnsConfigPropertiesFormatResponse, Map<String, dynamic>>(customDnsConfigs!, (value) => value.toMap()),
      'customNetworkInterfaceName': ?customNetworkInterfaceName,
      'etag': etag,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'id': ?id,
      'ipConfigurations': ?ipConfigurations == null ? null : pulumi.Input.encodeList<PrivateEndpointIPConfigurationResponse, Map<String, dynamic>>(ipConfigurations!, (value) => value.toMap()),
      'location': ?location,
      'manualPrivateLinkServiceConnections': ?manualPrivateLinkServiceConnections == null ? null : pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(manualPrivateLinkServiceConnections!, (value) => value.toMap()),
      'name': name,
      'networkInterfaces': pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'privateLinkServiceConnections': ?privateLinkServiceConnections == null ? null : pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(privateLinkServiceConnections!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPrivateEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointResult(
      applicationSecurityGroups: map['applicationSecurityGroups'] == null ? null : pulumi.Input.decodeList<ApplicationSecurityGroupResponse>(map['applicationSecurityGroups'], (value) => ApplicationSecurityGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      customDnsConfigs: map['customDnsConfigs'] == null ? null : pulumi.Input.decodeList<CustomDnsConfigPropertiesFormatResponse>(map['customDnsConfigs'], (value) => CustomDnsConfigPropertiesFormatResponse.fromMap((value as Map).cast<String, dynamic>())),
      customNetworkInterfaceName: map['customNetworkInterfaceName'] == null ? null : map['customNetworkInterfaceName'] as String,
      etag: map['etag'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<PrivateEndpointIPConfigurationResponse>(map['ipConfigurations'], (value) => PrivateEndpointIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      manualPrivateLinkServiceConnections: map['manualPrivateLinkServiceConnections'] == null ? null : pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(map['manualPrivateLinkServiceConnections'], (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkInterfaces: pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkServiceConnections: map['privateLinkServiceConnections'] == null ? null : pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(map['privateLinkServiceConnections'], (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      subnet: map['subnet'] == null ? null : SubnetResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

