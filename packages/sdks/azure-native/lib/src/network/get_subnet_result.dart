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

/// Result data returned by getSubnet.
class GetSubnetResult {
  /// The address prefix for the subnet.
  final String? addressPrefix;
  /// List of address prefixes for the subnet.
  final List<String>? addressPrefixes;
  /// Application gateway IP configurations of virtual network resource.
  final List<ApplicationGatewayIPConfigurationResponse>? applicationGatewayIPConfigurations;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  final bool? defaultOutboundAccess;
  /// An array of references to the delegations on the subnet.
  final List<DelegationResponse>? delegations;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Array of IpAllocation which reference this subnet.
  final List<SubResourceResponse>? ipAllocations;
  /// Array of IP configuration profiles which reference this subnet.
  final List<IPConfigurationProfileResponse> ipConfigurationProfiles;
  /// An array of references to the network interface IP configurations using subnet.
  final List<IPConfigurationResponse> ipConfigurations;
  /// A list of IPAM Pools for allocating IP address prefixes.
  final List<IpamPoolPrefixAllocationResponse>? ipamPoolPrefixAllocations;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Nat gateway associated with this subnet.
  final SubResourceResponse? natGateway;
  /// The reference to the NetworkSecurityGroup resource.
  final NetworkSecurityGroupResponse? networkSecurityGroup;
  /// Enable or Disable apply network policies on private end point in the subnet.
  final String? privateEndpointNetworkPolicies;
  /// An array of references to private endpoints.
  final List<PrivateEndpointResponse> privateEndpoints;
  /// Enable or Disable apply network policies on private link service in the subnet.
  final String? privateLinkServiceNetworkPolicies;
  /// The provisioning state of the subnet resource.
  final String provisioningState;
  /// A read-only string identifying the intention of use for this subnet based on delegations and other user-defined properties.
  final String purpose;
  /// An array of references to the external resources using subnet.
  final List<ResourceNavigationLinkResponse> resourceNavigationLinks;
  /// The reference to the RouteTable resource.
  final RouteTableResponse? routeTable;
  /// An array of references to services injecting into this subnet.
  final List<ServiceAssociationLinkResponse> serviceAssociationLinks;
  /// An array of service endpoint policies.
  final List<ServiceEndpointPolicyResponse>? serviceEndpointPolicies;
  /// An array of service endpoints.
  final List<ServiceEndpointPropertiesFormatResponse>? serviceEndpoints;
  /// Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  final String? sharingScope;
  /// Resource type.
  final String? type;

  /// Creates a new [GetSubnetResult].
  /// [addressPrefix] The address prefix for the subnet.
  /// [addressPrefixes] List of address prefixes for the subnet.
  /// [applicationGatewayIPConfigurations] Application gateway IP configurations of virtual network resource.
  /// [azureApiVersion] The Azure API version of the resource.
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
  const GetSubnetResult({
    this.addressPrefix,
    this.addressPrefixes,
    this.applicationGatewayIPConfigurations,
    required this.azureApiVersion,
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
      'applicationGatewayIPConfigurations': ?(() { final guardedValue = applicationGatewayIPConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplicationGatewayIPConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'defaultOutboundAccess': ?defaultOutboundAccess,
      'delegations': ?(() { final guardedValue = delegations; if (guardedValue == null) return null; return pulumi.Input.encodeList<DelegationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': etag,
      'id': ?id,
      'ipAllocations': ?(() { final guardedValue = ipAllocations; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipConfigurationProfiles': pulumi.Input.encodeList<IPConfigurationProfileResponse, Map<String, dynamic>>(ipConfigurationProfiles, (value) => value.toMap()),
      'ipConfigurations': pulumi.Input.encodeList<IPConfigurationResponse, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'ipamPoolPrefixAllocations': ?(() { final guardedValue = ipamPoolPrefixAllocations; if (guardedValue == null) return null; return pulumi.Input.encodeList<IpamPoolPrefixAllocationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'natGateway': ?natGateway?.toMap(),
      'networkSecurityGroup': ?networkSecurityGroup?.toMap(),
      'privateEndpointNetworkPolicies': ?privateEndpointNetworkPolicies,
      'privateEndpoints': pulumi.Input.encodeList<PrivateEndpointResponse, Map<String, dynamic>>(privateEndpoints, (value) => value.toMap()),
      'privateLinkServiceNetworkPolicies': ?privateLinkServiceNetworkPolicies,
      'provisioningState': provisioningState,
      'purpose': purpose,
      'resourceNavigationLinks': pulumi.Input.encodeList<ResourceNavigationLinkResponse, Map<String, dynamic>>(resourceNavigationLinks, (value) => value.toMap()),
      'routeTable': ?routeTable?.toMap(),
      'serviceAssociationLinks': pulumi.Input.encodeList<ServiceAssociationLinkResponse, Map<String, dynamic>>(serviceAssociationLinks, (value) => value.toMap()),
      'serviceEndpointPolicies': ?(() { final guardedValue = serviceEndpointPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<ServiceEndpointPolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceEndpoints': ?(() { final guardedValue = serviceEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<ServiceEndpointPropertiesFormatResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sharingScope': ?sharingScope,
      'type': ?type,
    };
  }

  factory GetSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetResult(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      applicationGatewayIPConfigurations: (() { final guardedValue = map['applicationGatewayIPConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayIPConfigurationResponse>(guardedValue, (value) => ApplicationGatewayIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      defaultOutboundAccess: (() { final guardedValue = map['defaultOutboundAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      delegations: (() { final guardedValue = map['delegations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DelegationResponse>(guardedValue, (value) => DelegationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAllocations: (() { final guardedValue = map['ipAllocations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipConfigurationProfiles: pulumi.Input.decodeList<IPConfigurationProfileResponse>(map['ipConfigurationProfiles']!, (value) => IPConfigurationProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipConfigurations: pulumi.Input.decodeList<IPConfigurationResponse>(map['ipConfigurations']!, (value) => IPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipamPoolPrefixAllocations: (() { final guardedValue = map['ipamPoolPrefixAllocations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpamPoolPrefixAllocationResponse>(guardedValue, (value) => IpamPoolPrefixAllocationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      natGateway: (() { final guardedValue = map['natGateway']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return NetworkSecurityGroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateEndpointNetworkPolicies: (() { final guardedValue = map['privateEndpointNetworkPolicies']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpoints: pulumi.Input.decodeList<PrivateEndpointResponse>(map['privateEndpoints']!, (value) => PrivateEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkServiceNetworkPolicies: (() { final guardedValue = map['privateLinkServiceNetworkPolicies']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      purpose: map['purpose'] as String,
      resourceNavigationLinks: pulumi.Input.decodeList<ResourceNavigationLinkResponse>(map['resourceNavigationLinks']!, (value) => ResourceNavigationLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      routeTable: (() { final guardedValue = map['routeTable']; if (guardedValue == null) return null; return RouteTableResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceAssociationLinks: pulumi.Input.decodeList<ServiceAssociationLinkResponse>(map['serviceAssociationLinks']!, (value) => ServiceAssociationLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceEndpointPolicies: (() { final guardedValue = map['serviceEndpointPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceEndpointPolicyResponse>(guardedValue, (value) => ServiceEndpointPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceEndpoints: (() { final guardedValue = map['serviceEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceEndpointPropertiesFormatResponse>(guardedValue, (value) => ServiceEndpointPropertiesFormatResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sharingScope: (() { final guardedValue = map['sharingScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

