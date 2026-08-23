// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_ipconfiguration_response.dart';
import 'delegation_response.dart';
import 'ipam_pool_prefix_allocation_response.dart';
import 'ipconfiguration_profile_response.dart';
import 'ipconfiguration_response.dart';
import 'network_security_group_response.dart';
import 'private_endpoint_response.dart';
import 'resource_navigation_link_response.dart';
import 'route_table_response.dart';
import 'service_association_link_response.dart';
import 'service_endpoint_policy_response.dart';
import 'service_endpoint_properties_format_response.dart';
import 'sub_resource_response.dart';

/// Subnet in a virtual network resource.
class SubnetResponse {
  /// The address prefix for the subnet.
  final pulumi.Input<String>? addressPrefix;
  /// List of address prefixes for the subnet.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// Application gateway IP configurations of virtual network resource.
  final pulumi.Input<List<ApplicationGatewayIPConfigurationResponse>>? applicationGatewayIPConfigurations;
  /// Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  final pulumi.Input<bool>? defaultOutboundAccess;
  /// An array of references to the delegations on the subnet.
  final pulumi.Input<List<DelegationResponse>>? delegations;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Array of IpAllocation which reference this subnet.
  final pulumi.Input<List<SubResourceResponse>>? ipAllocations;
  /// Array of IP configuration profiles which reference this subnet.
  final pulumi.Input<List<IPConfigurationProfileResponse>> ipConfigurationProfiles;
  /// An array of references to the network interface IP configurations using subnet.
  final pulumi.Input<List<IPConfigurationResponse>> ipConfigurations;
  /// A list of IPAM Pools for allocating IP address prefixes.
  final pulumi.Input<List<IpamPoolPrefixAllocationResponse>>? ipamPoolPrefixAllocations;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Nat gateway associated with this subnet.
  final pulumi.Input<SubResourceResponse>? natGateway;
  /// The reference to the NetworkSecurityGroup resource.
  final pulumi.Input<NetworkSecurityGroupResponse>? networkSecurityGroup;
  /// Enable or Disable apply network policies on private end point in the subnet.
  final pulumi.Input<String>? privateEndpointNetworkPolicies;
  /// An array of references to private endpoints.
  final pulumi.Input<List<PrivateEndpointResponse>> privateEndpoints;
  /// Enable or Disable apply network policies on private link service in the subnet.
  final pulumi.Input<String>? privateLinkServiceNetworkPolicies;
  /// The provisioning state of the subnet resource.
  final pulumi.Input<String> provisioningState;
  /// A read-only string identifying the intention of use for this subnet based on delegations and other user-defined properties.
  final pulumi.Input<String> purpose;
  /// An array of references to the external resources using subnet.
  final pulumi.Input<List<ResourceNavigationLinkResponse>> resourceNavigationLinks;
  /// The reference to the RouteTable resource.
  final pulumi.Input<RouteTableResponse>? routeTable;
  /// An array of references to services injecting into this subnet.
  final pulumi.Input<List<ServiceAssociationLinkResponse>> serviceAssociationLinks;
  /// An array of service endpoint policies.
  final pulumi.Input<List<ServiceEndpointPolicyResponse>>? serviceEndpointPolicies;
  /// An array of service endpoints.
  final pulumi.Input<List<ServiceEndpointPropertiesFormatResponse>>? serviceEndpoints;
  /// Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  final pulumi.Input<String>? sharingScope;
  /// Resource type.
  final pulumi.Input<String>? type;

  /// Creates a new [SubnetResponse].
  /// [addressPrefix] The address prefix for the subnet.
  /// [addressPrefixes] List of address prefixes for the subnet.
  /// [applicationGatewayIPConfigurations] Application gateway IP configurations of virtual network resource.
  /// [defaultOutboundAccess] Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  /// [delegations] An array of references to the delegations on the subnet.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipAllocations] Array of IpAllocation which reference this subnet.
  /// [ipConfigurationProfiles] Array of IP configuration profiles which reference this subnet.
  /// [ipConfigurations] An array of references to the network interface IP configurations using subnet.
  /// [ipamPoolPrefixAllocations] A list of IPAM Pools for allocating IP address prefixes.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [natGateway] Nat gateway associated with this subnet.
  /// [networkSecurityGroup] The reference to the NetworkSecurityGroup resource.
  /// [privateEndpointNetworkPolicies] Enable or Disable apply network policies on private end point in the subnet.
  /// [privateEndpoints] An array of references to private endpoints.
  /// [privateLinkServiceNetworkPolicies] Enable or Disable apply network policies on private link service in the subnet.
  /// [provisioningState] The provisioning state of the subnet resource.
  /// [purpose] A read-only string identifying the intention of use for this subnet based on delegations and other user-defined properties.
  /// [resourceNavigationLinks] An array of references to the external resources using subnet.
  /// [routeTable] The reference to the RouteTable resource.
  /// [serviceAssociationLinks] An array of references to services injecting into this subnet.
  /// [serviceEndpointPolicies] An array of service endpoint policies.
  /// [serviceEndpoints] An array of service endpoints.
  /// [sharingScope] Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  /// [type] Resource type.
  const SubnetResponse({
    this.addressPrefix,
    this.addressPrefixes,
    this.applicationGatewayIPConfigurations,
    this.defaultOutboundAccess,
    this.delegations,
    required this.etag,
    this.id,
    this.ipAllocations,
    required this.ipConfigurationProfiles,
    required this.ipConfigurations,
    this.ipamPoolPrefixAllocations,
    this.name,
    this.natGateway,
    this.networkSecurityGroup,
    this.privateEndpointNetworkPolicies,
    required this.privateEndpoints,
    this.privateLinkServiceNetworkPolicies,
    required this.provisioningState,
    required this.purpose,
    required this.resourceNavigationLinks,
    this.routeTable,
    required this.serviceAssociationLinks,
    this.serviceEndpointPolicies,
    this.serviceEndpoints,
    this.sharingScope,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixes': ?addressPrefixes,
      'applicationGatewayIPConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayIPConfigurationResponse>, List<Map<String, dynamic>>>(applicationGatewayIPConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultOutboundAccess': ?defaultOutboundAccess,
      'delegations': ?pulumi.Input.mapOptionalInputValue<List<DelegationResponse>, List<Map<String, dynamic>>>(delegations, (value) => pulumi.Input.encodeList<DelegationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': etag,
      'id': ?id,
      'ipAllocations': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(ipAllocations, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurationProfiles': pulumi.Input.mapInputValue<List<IPConfigurationProfileResponse>, List<Map<String, dynamic>>>(ipConfigurationProfiles, (value) => pulumi.Input.encodeList<IPConfigurationProfileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurations': pulumi.Input.mapInputValue<List<IPConfigurationResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<IPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipamPoolPrefixAllocations': ?pulumi.Input.mapOptionalInputValue<List<IpamPoolPrefixAllocationResponse>, List<Map<String, dynamic>>>(ipamPoolPrefixAllocations, (value) => pulumi.Input.encodeList<IpamPoolPrefixAllocationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'natGateway': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(natGateway, (value) => value.toMap()),
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityGroupResponse, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'privateEndpointNetworkPolicies': ?privateEndpointNetworkPolicies,
      'privateEndpoints': pulumi.Input.mapInputValue<List<PrivateEndpointResponse>, List<Map<String, dynamic>>>(privateEndpoints, (value) => pulumi.Input.encodeList<PrivateEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateLinkServiceNetworkPolicies': ?privateLinkServiceNetworkPolicies,
      'provisioningState': provisioningState,
      'purpose': purpose,
      'resourceNavigationLinks': pulumi.Input.mapInputValue<List<ResourceNavigationLinkResponse>, List<Map<String, dynamic>>>(resourceNavigationLinks, (value) => pulumi.Input.encodeList<ResourceNavigationLinkResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeTable': ?pulumi.Input.mapOptionalInputValue<RouteTableResponse, Map<String, dynamic>>(routeTable, (value) => value.toMap()),
      'serviceAssociationLinks': pulumi.Input.mapInputValue<List<ServiceAssociationLinkResponse>, List<Map<String, dynamic>>>(serviceAssociationLinks, (value) => pulumi.Input.encodeList<ServiceAssociationLinkResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceEndpointPolicies': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpointPolicyResponse>, List<Map<String, dynamic>>>(serviceEndpointPolicies, (value) => pulumi.Input.encodeList<ServiceEndpointPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpointPropertiesFormatResponse>, List<Map<String, dynamic>>>(serviceEndpoints, (value) => pulumi.Input.encodeList<ServiceEndpointPropertiesFormatResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sharingScope': ?sharingScope,
      'type': ?type,
    };
  }

  factory SubnetResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResponse(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      applicationGatewayIPConfigurations: (() { final guardedValue = map['applicationGatewayIPConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayIPConfigurationResponse>(guardedValue, (value) => ApplicationGatewayIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultOutboundAccess: (() { final guardedValue = map['defaultOutboundAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delegations: (() { final guardedValue = map['delegations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DelegationResponse>(guardedValue, (value) => DelegationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAllocations: (() { final guardedValue = map['ipAllocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipConfigurationProfiles: pulumi.Input.fromValue(pulumi.Input.decodeList<IPConfigurationProfileResponse>(map['ipConfigurationProfiles']!, (value) => IPConfigurationProfileResponse.fromMap((value as Map).cast<String, dynamic>()))),
      ipConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<IPConfigurationResponse>(map['ipConfigurations']!, (value) => IPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      ipamPoolPrefixAllocations: (() { final guardedValue = map['ipamPoolPrefixAllocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpamPoolPrefixAllocationResponse>(guardedValue, (value) => IpamPoolPrefixAllocationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGateway: (() { final guardedValue = map['natGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkSecurityGroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointNetworkPolicies: (() { final guardedValue = map['privateEndpointNetworkPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointResponse>(map['privateEndpoints']!, (value) => PrivateEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))),
      privateLinkServiceNetworkPolicies: (() { final guardedValue = map['privateLinkServiceNetworkPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      purpose: pulumi.Input.fromValue(map['purpose'] as String),
      resourceNavigationLinks: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceNavigationLinkResponse>(map['resourceNavigationLinks']!, (value) => ResourceNavigationLinkResponse.fromMap((value as Map).cast<String, dynamic>()))),
      routeTable: (() { final guardedValue = map['routeTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteTableResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAssociationLinks: pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceAssociationLinkResponse>(map['serviceAssociationLinks']!, (value) => ServiceAssociationLinkResponse.fromMap((value as Map).cast<String, dynamic>()))),
      serviceEndpointPolicies: (() { final guardedValue = map['serviceEndpointPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceEndpointPolicyResponse>(guardedValue, (value) => ServiceEndpointPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceEndpoints: (() { final guardedValue = map['serviceEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceEndpointPropertiesFormatResponse>(guardedValue, (value) => ServiceEndpointPropertiesFormatResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sharingScope: (() { final guardedValue = map['sharingScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
