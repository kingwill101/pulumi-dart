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
  final String? azureApiVersion;
  /// An array of custom dns configurations.
  final List<CustomDnsConfigPropertiesFormatResponse>? customDnsConfigs;
  /// The custom name of the network interface attached to the private endpoint.
  final String? customNetworkInterfaceName;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
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
  final String? name;
  /// An array of references to the network interfaces created for this private endpoint.
  final List<NetworkInterfaceResponse>? networkInterfaces;
  /// A grouping of information about the connection to the remote resource.
  final List<PrivateLinkServiceConnectionResponse>? privateLinkServiceConnections;
  /// The provisioning state of the private endpoint resource.
  final String? provisioningState;
  /// The ID of the subnet from which the private IP will be allocated.
  final SubnetResponse? subnet;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

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
  const GetPrivateEndpointResult({
    this.applicationSecurityGroups,
    this.azureApiVersion,
    this.customDnsConfigs,
    this.customNetworkInterfaceName,
    this.etag,
    this.extendedLocation,
    this.id,
    this.ipConfigurations,
    this.location,
    this.manualPrivateLinkServiceConnections,
    this.name,
    this.networkInterfaces,
    this.privateLinkServiceConnections,
    this.provisioningState,
    this.subnet,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSecurityGroups': ?(() { final guardedValue = applicationSecurityGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplicationSecurityGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'customDnsConfigs': ?(() { final guardedValue = customDnsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<CustomDnsConfigPropertiesFormatResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customNetworkInterfaceName': ?customNetworkInterfaceName,
      'etag': ?etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointIPConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'manualPrivateLinkServiceConnections': ?(() { final guardedValue = manualPrivateLinkServiceConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'networkInterfaces': ?(() { final guardedValue = networkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'privateLinkServiceConnections': ?(() { final guardedValue = privateLinkServiceConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'subnet': ?subnet?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetPrivateEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointResult(
      applicationSecurityGroups: (() { final guardedValue = map['applicationSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationSecurityGroupResponse>(guardedValue, (value) => ApplicationSecurityGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customDnsConfigs: (() { final guardedValue = map['customDnsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDnsConfigPropertiesFormatResponse>(guardedValue, (value) => CustomDnsConfigPropertiesFormatResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      customNetworkInterfaceName: (() { final guardedValue = map['customNetworkInterfaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointIPConfigurationResponse>(guardedValue, (value) => PrivateEndpointIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      manualPrivateLinkServiceConnections: (() { final guardedValue = map['manualPrivateLinkServiceConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(guardedValue, (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInterfaceResponse>(guardedValue, (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnections: (() { final guardedValue = map['privateLinkServiceConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(guardedValue, (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return SubnetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
