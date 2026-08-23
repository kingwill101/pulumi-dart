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
  const PrivateLinkServiceResponse({
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
      alias: pulumi.Input.fromValue(map['alias'] as String),
      autoApproval: (() { final guardedValue = map['autoApproval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkServicePropertiesResponseAutoApproval.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationIPAddress: (() { final guardedValue = map['destinationIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableProxyProtocol: (() { final guardedValue = map['enableProxyProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkServiceIpConfigurationResponse>(guardedValue, (value) => PrivateLinkServiceIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadBalancerFrontendIpConfigurations: (() { final guardedValue = map['loadBalancerFrontendIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontendIPConfigurationResponse>(guardedValue, (value) => FrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces']!, (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkServicePropertiesResponseVisibility.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
