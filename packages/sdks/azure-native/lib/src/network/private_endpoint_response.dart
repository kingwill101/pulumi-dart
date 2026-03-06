// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_security_group_response.dart';
import 'custom_dns_config_properties_format_response.dart';
import 'extended_location_response.dart';
import 'network_interface_response.dart';
import 'private_endpoint_ipconfiguration_response.dart';
import 'private_link_service_connection_response.dart';
import 'subnet_response.dart';

/// Private endpoint resource.
class PrivateEndpointResponse {
  /// Application security groups in which the private endpoint IP configuration is included.
  final pulumi.Input<List<ApplicationSecurityGroupResponse>>? applicationSecurityGroups;
  /// An array of custom dns configurations.
  final pulumi.Input<List<CustomDnsConfigPropertiesFormatResponse>>? customDnsConfigs;
  /// The custom name of the network interface attached to the private endpoint.
  final pulumi.Input<String>? customNetworkInterfaceName;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The extended location of the load balancer.
  final pulumi.Input<ExtendedLocationResponse>? extendedLocation;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// A list of IP configurations of the private endpoint. This will be used to map to the First Party Service's endpoints.
  final pulumi.Input<List<PrivateEndpointIPConfigurationResponse>>? ipConfigurations;
  /// Specifies the IP version type for the private IPs of the private endpoint. If not defined, this defaults to IPv4.
  final pulumi.Input<String>? ipVersionType;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// A grouping of information about the connection to the remote resource. Used when the network admin does not have access to approve connections to the remote resource.
  final pulumi.Input<List<PrivateLinkServiceConnectionResponse>>? manualPrivateLinkServiceConnections;
  /// Resource name.
  final pulumi.Input<String> name;
  /// An array of references to the network interfaces created for this private endpoint.
  final pulumi.Input<List<NetworkInterfaceResponse>> networkInterfaces;
  /// A grouping of information about the connection to the remote resource.
  final pulumi.Input<List<PrivateLinkServiceConnectionResponse>>? privateLinkServiceConnections;
  /// The provisioning state of the private endpoint resource.
  final pulumi.Input<String> provisioningState;
  /// The ID of the subnet from which the private IP will be allocated.
  final pulumi.Input<SubnetResponse>? subnet;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointResponse].
  /// [applicationSecurityGroups] Application security groups in which the private endpoint IP configuration is included.
  /// [customDnsConfigs] An array of custom dns configurations.
  /// [customNetworkInterfaceName] The custom name of the network interface attached to the private endpoint.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [extendedLocation] The extended location of the load balancer.
  /// [id] Resource ID.
  /// [ipConfigurations] A list of IP configurations of the private endpoint. This will be used to map to the First Party Service's endpoints.
  /// [ipVersionType] Specifies the IP version type for the private IPs of the private endpoint. If not defined, this defaults to IPv4.
  /// [location] Resource location.
  /// [manualPrivateLinkServiceConnections] A grouping of information about the connection to the remote resource. Used when the network admin does not have access to approve connections to the remote resource.
  /// [name] Resource name.
  /// [networkInterfaces] An array of references to the network interfaces created for this private endpoint.
  /// [privateLinkServiceConnections] A grouping of information about the connection to the remote resource.
  /// [provisioningState] The provisioning state of the private endpoint resource.
  /// [subnet] The ID of the subnet from which the private IP will be allocated.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const PrivateEndpointResponse({
    this.applicationSecurityGroups,
    this.customDnsConfigs,
    this.customNetworkInterfaceName,
    required this.etag,
    this.extendedLocation,
    this.id,
    this.ipConfigurations,
    this.ipVersionType,
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
      'applicationSecurityGroups': ?pulumi.Input.mapOptionalInputValue<List<ApplicationSecurityGroupResponse>, List<Map<String, dynamic>>>(applicationSecurityGroups, (value) => pulumi.Input.encodeList<ApplicationSecurityGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customDnsConfigs': ?pulumi.Input.mapOptionalInputValue<List<CustomDnsConfigPropertiesFormatResponse>, List<Map<String, dynamic>>>(customDnsConfigs, (value) => pulumi.Input.encodeList<CustomDnsConfigPropertiesFormatResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customNetworkInterfaceName': ?customNetworkInterfaceName,
      'etag': etag,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'id': ?id,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointIPConfigurationResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<PrivateEndpointIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipVersionType': ?ipVersionType,
      'location': ?location,
      'manualPrivateLinkServiceConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceConnectionResponse>, List<Map<String, dynamic>>>(manualPrivateLinkServiceConnections, (value) => pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'networkInterfaces': pulumi.Input.mapInputValue<List<NetworkInterfaceResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateLinkServiceConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceConnectionResponse>, List<Map<String, dynamic>>>(privateLinkServiceConnections, (value) => pulumi.Input.encodeList<PrivateLinkServiceConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory PrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResponse(
      applicationSecurityGroups: (() { final guardedValue = map['applicationSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationSecurityGroupResponse>(guardedValue, (value) => ApplicationSecurityGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customDnsConfigs: (() { final guardedValue = map['customDnsConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomDnsConfigPropertiesFormatResponse>(guardedValue, (value) => CustomDnsConfigPropertiesFormatResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customNetworkInterfaceName: (() { final guardedValue = map['customNetworkInterfaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointIPConfigurationResponse>(guardedValue, (value) => PrivateEndpointIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipVersionType: (() { final guardedValue = map['ipVersionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualPrivateLinkServiceConnections: (() { final guardedValue = map['manualPrivateLinkServiceConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(guardedValue, (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces']!, (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      privateLinkServiceConnections: (() { final guardedValue = map['privateLinkServiceConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkServiceConnectionResponse>(guardedValue, (value) => PrivateLinkServiceConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

