// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'frontend_ipconfiguration_response.dart';
import 'network_interface_response.dart';
import 'private_endpoint_connection_response.dart';
import 'private_link_service_ip_configuration_response.dart';
import 'private_link_service_properties_response_auto_approval.dart';
import 'private_link_service_properties_response_visibility.dart';

/// Private link service resource.
class PrivateLinkServiceResponse {
  /// The access mode of the private link service.
  final pulumi.Input<String>? accessMode;
  /// The alias of the private link service.
  final pulumi.Input<String> alias;
  /// The auto-approval list of the private link service.
  final pulumi.Input<PrivateLinkServicePropertiesResponseAutoApproval>? autoApproval;
  /// The destination IP address of the private link service.
  final pulumi.Input<String>? destinationIPAddress;
  /// Whether the private link service is enabled for proxy protocol or not.
  final pulumi.Input<bool>? enableProxyProtocol;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The extended location of the load balancer.
  final pulumi.Input<ExtendedLocationResponse>? extendedLocation;
  /// The list of Fqdn.
  final pulumi.Input<List<String>>? fqdns;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// An array of private link service IP configurations.
  final pulumi.Input<List<PrivateLinkServiceIpConfigurationResponse>>? ipConfigurations;
  /// An array of references to the load balancer IP configurations.
  final pulumi.Input<List<FrontendIPConfigurationResponse>>? loadBalancerFrontendIpConfigurations;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// An array of references to the network interfaces created for this private link service.
  final pulumi.Input<List<NetworkInterfaceResponse>> networkInterfaces;
  /// An array of list about connections to the private endpoint.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// The provisioning state of the private link service resource.
  final pulumi.Input<String> provisioningState;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type.
  final pulumi.Input<String> type;
  /// The visibility list of the private link service.
  final pulumi.Input<PrivateLinkServicePropertiesResponseVisibility>? visibility;

  /// Creates a new [PrivateLinkServiceResponse].
  /// [accessMode] The access mode of the private link service.
  /// [alias] The alias of the private link service.
  /// [autoApproval] The auto-approval list of the private link service.
  /// [destinationIPAddress] The destination IP address of the private link service.
  /// [enableProxyProtocol] Whether the private link service is enabled for proxy protocol or not.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [extendedLocation] The extended location of the load balancer.
  /// [fqdns] The list of Fqdn.
  /// [id] Resource ID.
  /// [ipConfigurations] An array of private link service IP configurations.
  /// [loadBalancerFrontendIpConfigurations] An array of references to the load balancer IP configurations.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [networkInterfaces] An array of references to the network interfaces created for this private link service.
  /// [privateEndpointConnections] An array of list about connections to the private endpoint.
  /// [provisioningState] The provisioning state of the private link service resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [visibility] The visibility list of the private link service.
  PrivateLinkServiceResponse({
    this.accessMode,
    required this.alias,
    this.autoApproval,
    this.destinationIPAddress,
    this.enableProxyProtocol,
    required this.etag,
    this.extendedLocation,
    this.fqdns,
    this.id,
    this.ipConfigurations,
    this.loadBalancerFrontendIpConfigurations,
    this.location,
    required this.name,
    required this.networkInterfaces,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.tags,
    required this.type,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'alias': alias,
      'autoApproval': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServicePropertiesResponseAutoApproval, Map<String, dynamic>>(autoApproval, (value) => value.toMap()),
      'destinationIPAddress': ?destinationIPAddress,
      'enableProxyProtocol': ?enableProxyProtocol,
      'etag': etag,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'fqdns': ?fqdns,
      'id': ?id,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceIpConfigurationResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<PrivateLinkServiceIpConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerFrontendIpConfigurations': ?pulumi.Input.mapOptionalInputValue<List<FrontendIPConfigurationResponse>, List<Map<String, dynamic>>>(loadBalancerFrontendIpConfigurations, (value) => pulumi.Input.encodeList<FrontendIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': name,
      'networkInterfaces': pulumi.Input.mapInputValue<List<NetworkInterfaceResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
      'visibility': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServicePropertiesResponseVisibility, Map<String, dynamic>>(visibility, (value) => value.toMap()),
    };
  }

  factory PrivateLinkServiceResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceResponse(
      accessMode: map['accessMode'] == null ? null : (map['accessMode']! as String).input(),
      alias: (map['alias'] as String).input(),
      autoApproval: map['autoApproval'] == null ? null : (PrivateLinkServicePropertiesResponseAutoApproval.fromMap((map['autoApproval']! as Map).cast<String, dynamic>())).input(),
      destinationIPAddress: map['destinationIPAddress'] == null ? null : (map['destinationIPAddress']! as String).input(),
      enableProxyProtocol: map['enableProxyProtocol'] == null ? null : (map['enableProxyProtocol']! as bool).input(),
      etag: (map['etag'] as String).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      fqdns: map['fqdns'] == null ? null : ((map['fqdns']! as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<PrivateLinkServiceIpConfigurationResponse>(map['ipConfigurations']!, (value) => PrivateLinkServiceIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerFrontendIpConfigurations: map['loadBalancerFrontendIpConfigurations'] == null ? null : (pulumi.Input.decodeList<FrontendIPConfigurationResponse>(map['loadBalancerFrontendIpConfigurations']!, (value) => FrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: (map['name'] as String).input(),
      networkInterfaces: (pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateEndpointConnections: (pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      visibility: map['visibility'] == null ? null : (PrivateLinkServicePropertiesResponseVisibility.fromMap((map['visibility']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

