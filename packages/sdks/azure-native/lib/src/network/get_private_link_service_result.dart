// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'frontend_ipconfiguration_response.dart';
import 'network_interface_response.dart';
import 'private_endpoint_connection_response.dart';
import 'private_link_service_ip_configuration_response.dart';
import 'private_link_service_properties_response_auto_approval.dart';
import 'private_link_service_properties_response_visibility.dart';

/// Result data returned by getPrivateLinkService.
class GetPrivateLinkServiceResult {
  /// The alias of the private link service.
  final String? alias;
  /// The auto-approval list of the private link service.
  final PrivateLinkServicePropertiesResponseAutoApproval? autoApproval;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The destination IP address of the private link service.
  final String? destinationIPAddress;
  /// Whether the private link service is enabled for proxy protocol or not.
  final bool? enableProxyProtocol;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// The extended location of the load balancer.
  final ExtendedLocationResponse? extendedLocation;
  /// The list of Fqdn.
  final List<String>? fqdns;
  /// Resource ID.
  final String? id;
  /// An array of private link service IP configurations.
  final List<PrivateLinkServiceIpConfigurationResponse>? ipConfigurations;
  /// An array of references to the load balancer IP configurations.
  final List<FrontendIPConfigurationResponse>? loadBalancerFrontendIpConfigurations;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// An array of references to the network interfaces created for this private link service.
  final List<NetworkInterfaceResponse>? networkInterfaces;
  /// An array of list about connections to the private endpoint.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// The provisioning state of the private link service resource.
  final String? provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// The visibility list of the private link service.
  final PrivateLinkServicePropertiesResponseVisibility? visibility;

  /// Creates a new [GetPrivateLinkServiceResult].
  /// [alias] The alias of the private link service.
  /// [autoApproval] The auto-approval list of the private link service.
  /// [azureApiVersion] The Azure API version of the resource.
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
  const GetPrivateLinkServiceResult({
    this.alias,
    this.autoApproval,
    this.azureApiVersion,
    this.destinationIPAddress,
    this.enableProxyProtocol,
    this.etag,
    this.extendedLocation,
    this.fqdns,
    this.id,
    this.ipConfigurations,
    this.loadBalancerFrontendIpConfigurations,
    this.location,
    this.name,
    this.networkInterfaces,
    this.privateEndpointConnections,
    this.provisioningState,
    this.tags,
    this.type,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'autoApproval': ?autoApproval?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'destinationIPAddress': ?destinationIPAddress,
      'enableProxyProtocol': ?enableProxyProtocol,
      'etag': ?etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'fqdns': ?fqdns,
      'id': ?id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateLinkServiceIpConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'loadBalancerFrontendIpConfigurations': ?(() { final guardedValue = loadBalancerFrontendIpConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<FrontendIPConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'networkInterfaces': ?(() { final guardedValue = networkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'tags': ?tags,
      'type': ?type,
      'visibility': ?visibility?.toMap(),
    };
  }

  factory GetPrivateLinkServiceResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServiceResult(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoApproval: (() { final guardedValue = map['autoApproval']; if (guardedValue == null) return null; return PrivateLinkServicePropertiesResponseAutoApproval.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationIPAddress: (() { final guardedValue = map['destinationIPAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableProxyProtocol: (() { final guardedValue = map['enableProxyProtocol']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateLinkServiceIpConfigurationResponse>(guardedValue, (value) => PrivateLinkServiceIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      loadBalancerFrontendIpConfigurations: (() { final guardedValue = map['loadBalancerFrontendIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontendIPConfigurationResponse>(guardedValue, (value) => FrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInterfaceResponse>(guardedValue, (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return PrivateLinkServicePropertiesResponseVisibility.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
