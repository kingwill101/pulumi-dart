// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegation_interface_endpoint_response.dart';
import 'interface_endpoint_response.dart';
import 'ipconfiguration_interface_endpoint_response.dart';
import 'ipconfiguration_profile_interface_endpoint_response.dart';
import 'network_security_group_interface_endpoint_response.dart';
import 'resource_navigation_link_interface_endpoint_response.dart';
import 'route_table_interface_endpoint_response.dart';
import 'service_association_link_interface_endpoint_response.dart';
import 'service_endpoint_policy_interface_endpoint_response.dart';
import 'service_endpoint_properties_format_interface_endpoint_response.dart';
import 'sub_resource_response.dart';

/// Subnet in a virtual network resource.
class SubnetInterfaceEndpointResponse {
  /// The address prefix for the subnet.
  final pulumi.Input<String>? addressPrefix;
  /// List of  address prefixes for the subnet.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// Gets an array of references to the delegations on the subnet.
  final pulumi.Input<List<DelegationInterfaceEndpointResponse>>? delegations;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// An array of references to interface endpoints
  final pulumi.Input<List<InterfaceEndpointResponse>> interfaceEndpoints;
  /// Array of IP configuration profiles which reference this subnet.
  final pulumi.Input<List<IPConfigurationProfileInterfaceEndpointResponse>> ipConfigurationProfiles;
  /// Gets an array of references to the network interface IP configurations using subnet.
  final pulumi.Input<List<IPConfigurationInterfaceEndpointResponse>> ipConfigurations;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Nat gateway associated with this subnet.
  final pulumi.Input<SubResourceResponse>? natGateway;
  /// The reference of the NetworkSecurityGroup resource.
  final pulumi.Input<NetworkSecurityGroupInterfaceEndpointResponse>? networkSecurityGroup;
  /// The provisioning state of the resource.
  final pulumi.Input<String>? provisioningState;
  /// A read-only string identifying the intention of use for this subnet based on delegations and other user-defined properties.
  final pulumi.Input<String> purpose;
  /// Gets an array of references to the external resources using subnet.
  final pulumi.Input<List<ResourceNavigationLinkInterfaceEndpointResponse>>? resourceNavigationLinks;
  /// The reference of the RouteTable resource.
  final pulumi.Input<RouteTableInterfaceEndpointResponse>? routeTable;
  /// Gets an array of references to services injecting into this subnet.
  final pulumi.Input<List<ServiceAssociationLinkInterfaceEndpointResponse>>? serviceAssociationLinks;
  /// An array of service endpoint policies.
  final pulumi.Input<List<ServiceEndpointPolicyInterfaceEndpointResponse>>? serviceEndpointPolicies;
  /// An array of service endpoints.
  final pulumi.Input<List<ServiceEndpointPropertiesFormatInterfaceEndpointResponse>>? serviceEndpoints;

  /// Creates a new [SubnetInterfaceEndpointResponse].
  /// [addressPrefix] The address prefix for the subnet.
  /// [addressPrefixes] List of  address prefixes for the subnet.
  /// [delegations] Gets an array of references to the delegations on the subnet.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [interfaceEndpoints] An array of references to interface endpoints
  /// [ipConfigurationProfiles] Array of IP configuration profiles which reference this subnet.
  /// [ipConfigurations] Gets an array of references to the network interface IP configurations using subnet.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [natGateway] Nat gateway associated with this subnet.
  /// [networkSecurityGroup] The reference of the NetworkSecurityGroup resource.
  /// [provisioningState] The provisioning state of the resource.
  /// [purpose] A read-only string identifying the intention of use for this subnet based on delegations and other user-defined properties.
  /// [resourceNavigationLinks] Gets an array of references to the external resources using subnet.
  /// [routeTable] The reference of the RouteTable resource.
  /// [serviceAssociationLinks] Gets an array of references to services injecting into this subnet.
  /// [serviceEndpointPolicies] An array of service endpoint policies.
  /// [serviceEndpoints] An array of service endpoints.
  const SubnetInterfaceEndpointResponse({
    this.addressPrefix,
    this.addressPrefixes,
    this.delegations,
    this.etag,
    this.id,
    required this.interfaceEndpoints,
    required this.ipConfigurationProfiles,
    required this.ipConfigurations,
    this.name,
    this.natGateway,
    this.networkSecurityGroup,
    this.provisioningState,
    required this.purpose,
    this.resourceNavigationLinks,
    this.routeTable,
    this.serviceAssociationLinks,
    this.serviceEndpointPolicies,
    this.serviceEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixes': ?addressPrefixes,
      'delegations': ?pulumi.Input.mapOptionalInputValue<List<DelegationInterfaceEndpointResponse>, List<Map<String, dynamic>>>(delegations, (value) => pulumi.Input.encodeList<DelegationInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'id': ?id,
      'interfaceEndpoints': pulumi.Input.mapInputValue<List<InterfaceEndpointResponse>, List<Map<String, dynamic>>>(interfaceEndpoints, (value) => pulumi.Input.encodeList<InterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurationProfiles': pulumi.Input.mapInputValue<List<IPConfigurationProfileInterfaceEndpointResponse>, List<Map<String, dynamic>>>(ipConfigurationProfiles, (value) => pulumi.Input.encodeList<IPConfigurationProfileInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurations': pulumi.Input.mapInputValue<List<IPConfigurationInterfaceEndpointResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<IPConfigurationInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'natGateway': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(natGateway, (value) => value.toMap()),
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityGroupInterfaceEndpointResponse, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'purpose': purpose,
      'resourceNavigationLinks': ?pulumi.Input.mapOptionalInputValue<List<ResourceNavigationLinkInterfaceEndpointResponse>, List<Map<String, dynamic>>>(resourceNavigationLinks, (value) => pulumi.Input.encodeList<ResourceNavigationLinkInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeTable': ?pulumi.Input.mapOptionalInputValue<RouteTableInterfaceEndpointResponse, Map<String, dynamic>>(routeTable, (value) => value.toMap()),
      'serviceAssociationLinks': ?pulumi.Input.mapOptionalInputValue<List<ServiceAssociationLinkInterfaceEndpointResponse>, List<Map<String, dynamic>>>(serviceAssociationLinks, (value) => pulumi.Input.encodeList<ServiceAssociationLinkInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceEndpointPolicies': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpointPolicyInterfaceEndpointResponse>, List<Map<String, dynamic>>>(serviceEndpointPolicies, (value) => pulumi.Input.encodeList<ServiceEndpointPolicyInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpointPropertiesFormatInterfaceEndpointResponse>, List<Map<String, dynamic>>>(serviceEndpoints, (value) => pulumi.Input.encodeList<ServiceEndpointPropertiesFormatInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubnetInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return SubnetInterfaceEndpointResponse(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      delegations: (() { final guardedValue = map['delegations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DelegationInterfaceEndpointResponse>(guardedValue, (value) => DelegationInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaceEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<InterfaceEndpointResponse>(map['interfaceEndpoints']!, (value) => InterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))),
      ipConfigurationProfiles: pulumi.Input.fromValue(pulumi.Input.decodeList<IPConfigurationProfileInterfaceEndpointResponse>(map['ipConfigurationProfiles']!, (value) => IPConfigurationProfileInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))),
      ipConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<IPConfigurationInterfaceEndpointResponse>(map['ipConfigurations']!, (value) => IPConfigurationInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGateway: (() { final guardedValue = map['natGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkSecurityGroupInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purpose: pulumi.Input.fromValue(map['purpose'] as String),
      resourceNavigationLinks: (() { final guardedValue = map['resourceNavigationLinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceNavigationLinkInterfaceEndpointResponse>(guardedValue, (value) => ResourceNavigationLinkInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routeTable: (() { final guardedValue = map['routeTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteTableInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAssociationLinks: (() { final guardedValue = map['serviceAssociationLinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceAssociationLinkInterfaceEndpointResponse>(guardedValue, (value) => ServiceAssociationLinkInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceEndpointPolicies: (() { final guardedValue = map['serviceEndpointPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceEndpointPolicyInterfaceEndpointResponse>(guardedValue, (value) => ServiceEndpointPolicyInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceEndpoints: (() { final guardedValue = map['serviceEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceEndpointPropertiesFormatInterfaceEndpointResponse>(guardedValue, (value) => ServiceEndpointPropertiesFormatInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
