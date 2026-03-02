// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_ipconfiguration.dart';
import 'delegation.dart';
import 'ipam_pool_prefix_allocation.dart';
import 'network_security_group.dart';
import 'resource_navigation_link.dart';
import 'route_table.dart';
import 'service_association_link.dart';
import 'service_endpoint_policy.dart';
import 'service_endpoint_properties_format.dart';
import 'sub_resource.dart';

/// Subnet in a virtual network resource.
class Subnet {
  /// The address prefix for the subnet.
  final pulumi.Input<String>? addressPrefix;
  /// List of address prefixes for the subnet.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// Application gateway IP configurations of virtual network resource.
  final pulumi.Input<List<ApplicationGatewayIPConfiguration>>? applicationGatewayIPConfigurations;
  /// Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  final pulumi.Input<bool>? defaultOutboundAccess;
  /// An array of references to the delegations on the subnet.
  final pulumi.Input<List<Delegation>>? delegations;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Array of IpAllocation which reference this subnet.
  final pulumi.Input<List<SubResource>>? ipAllocations;
  /// A list of IPAM Pools for allocating IP address prefixes.
  final pulumi.Input<List<IpamPoolPrefixAllocation>>? ipamPoolPrefixAllocations;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Nat gateway associated with this subnet.
  final pulumi.Input<SubResource>? natGateway;
  /// The reference to the NetworkSecurityGroup resource.
  final pulumi.Input<NetworkSecurityGroup>? networkSecurityGroup;
  /// Enable or Disable apply network policies on private end point in the subnet.
  final pulumi.Input<String>? privateEndpointNetworkPolicies;
  /// Enable or Disable apply network policies on private link service in the subnet.
  final pulumi.Input<String>? privateLinkServiceNetworkPolicies;
  /// The provisioning state of the resource.
  final pulumi.Input<String>? provisioningState;
  /// Gets an array of references to the external resources using subnet.
  final pulumi.Input<List<ResourceNavigationLink>>? resourceNavigationLinks;
  /// The reference to the RouteTable resource.
  final pulumi.Input<RouteTable>? routeTable;
  /// Gets an array of references to services injecting into this subnet.
  final pulumi.Input<List<ServiceAssociationLink>>? serviceAssociationLinks;
  /// An array of service endpoint policies.
  final pulumi.Input<List<ServiceEndpointPolicy>>? serviceEndpointPolicies;
  /// An array of service endpoints.
  final pulumi.Input<List<ServiceEndpointPropertiesFormat>>? serviceEndpoints;
  /// Reference to an existing service gateway.
  final pulumi.Input<SubResource>? serviceGateway;
  /// Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  final pulumi.Input<String>? sharingScope;
  /// Resource type.
  final pulumi.Input<String>? type;

  /// Creates a new [Subnet].
  /// [addressPrefix] The address prefix for the subnet.
  /// [addressPrefixes] List of address prefixes for the subnet.
  /// [applicationGatewayIPConfigurations] Application gateway IP configurations of virtual network resource.
  /// [defaultOutboundAccess] Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  /// [delegations] An array of references to the delegations on the subnet.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipAllocations] Array of IpAllocation which reference this subnet.
  /// [ipamPoolPrefixAllocations] A list of IPAM Pools for allocating IP address prefixes.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [natGateway] Nat gateway associated with this subnet.
  /// [networkSecurityGroup] The reference to the NetworkSecurityGroup resource.
  /// [privateEndpointNetworkPolicies] Enable or Disable apply network policies on private end point in the subnet.
  /// [privateLinkServiceNetworkPolicies] Enable or Disable apply network policies on private link service in the subnet.
  /// [provisioningState] The provisioning state of the resource.
  /// [resourceNavigationLinks] Gets an array of references to the external resources using subnet.
  /// [routeTable] The reference to the RouteTable resource.
  /// [serviceAssociationLinks] Gets an array of references to services injecting into this subnet.
  /// [serviceEndpointPolicies] An array of service endpoint policies.
  /// [serviceEndpoints] An array of service endpoints.
  /// [serviceGateway] Reference to an existing service gateway.
  /// [sharingScope] Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  /// [type] Resource type.
  Subnet({
    this.addressPrefix,
    this.addressPrefixes,
    this.applicationGatewayIPConfigurations,
    this.defaultOutboundAccess,
    this.delegations,
    this.etag,
    this.id,
    this.ipAllocations,
    this.ipamPoolPrefixAllocations,
    this.name,
    this.natGateway,
    this.networkSecurityGroup,
    this.privateEndpointNetworkPolicies,
    this.privateLinkServiceNetworkPolicies,
    this.provisioningState,
    this.resourceNavigationLinks,
    this.routeTable,
    this.serviceAssociationLinks,
    this.serviceEndpointPolicies,
    this.serviceEndpoints,
    this.serviceGateway,
    this.sharingScope,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixes': ?addressPrefixes,
      'applicationGatewayIPConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayIPConfiguration>, List<Map<String, dynamic>>>(applicationGatewayIPConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultOutboundAccess': ?defaultOutboundAccess,
      'delegations': ?pulumi.Input.mapOptionalInputValue<List<Delegation>, List<Map<String, dynamic>>>(delegations, (value) => pulumi.Input.encodeList<Delegation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'id': ?id,
      'ipAllocations': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(ipAllocations, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipamPoolPrefixAllocations': ?pulumi.Input.mapOptionalInputValue<List<IpamPoolPrefixAllocation>, List<Map<String, dynamic>>>(ipamPoolPrefixAllocations, (value) => pulumi.Input.encodeList<IpamPoolPrefixAllocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'natGateway': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(natGateway, (value) => value.toMap()),
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityGroup, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'privateEndpointNetworkPolicies': ?privateEndpointNetworkPolicies,
      'privateLinkServiceNetworkPolicies': ?privateLinkServiceNetworkPolicies,
      'provisioningState': ?provisioningState,
      'resourceNavigationLinks': ?pulumi.Input.mapOptionalInputValue<List<ResourceNavigationLink>, List<Map<String, dynamic>>>(resourceNavigationLinks, (value) => pulumi.Input.encodeList<ResourceNavigationLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeTable': ?pulumi.Input.mapOptionalInputValue<RouteTable, Map<String, dynamic>>(routeTable, (value) => value.toMap()),
      'serviceAssociationLinks': ?pulumi.Input.mapOptionalInputValue<List<ServiceAssociationLink>, List<Map<String, dynamic>>>(serviceAssociationLinks, (value) => pulumi.Input.encodeList<ServiceAssociationLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceEndpointPolicies': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpointPolicy>, List<Map<String, dynamic>>>(serviceEndpointPolicies, (value) => pulumi.Input.encodeList<ServiceEndpointPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpointPropertiesFormat>, List<Map<String, dynamic>>>(serviceEndpoints, (value) => pulumi.Input.encodeList<ServiceEndpointPropertiesFormat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceGateway': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(serviceGateway, (value) => value.toMap()),
      'sharingScope': ?sharingScope,
      'type': ?type,
    };
  }

  factory Subnet.fromMap(Map<String, dynamic> map) {
    return Subnet(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix'] as String).input(),
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes'] as List).cast<String>()).input(),
      applicationGatewayIPConfigurations: map['applicationGatewayIPConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayIPConfiguration>(map['applicationGatewayIPConfigurations'], (value) => ApplicationGatewayIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultOutboundAccess: map['defaultOutboundAccess'] == null ? null : (map['defaultOutboundAccess'] as bool).input(),
      delegations: map['delegations'] == null ? null : (pulumi.Input.decodeList<Delegation>(map['delegations'], (value) => Delegation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ipAllocations: map['ipAllocations'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['ipAllocations'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipamPoolPrefixAllocations: map['ipamPoolPrefixAllocations'] == null ? null : (pulumi.Input.decodeList<IpamPoolPrefixAllocation>(map['ipamPoolPrefixAllocations'], (value) => IpamPoolPrefixAllocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      natGateway: map['natGateway'] == null ? null : (SubResource.fromMap((map['natGateway'] as Map).cast<String, dynamic>())).input(),
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : (NetworkSecurityGroup.fromMap((map['networkSecurityGroup'] as Map).cast<String, dynamic>())).input(),
      privateEndpointNetworkPolicies: map['privateEndpointNetworkPolicies'] == null ? null : (map['privateEndpointNetworkPolicies'] as String).input(),
      privateLinkServiceNetworkPolicies: map['privateLinkServiceNetworkPolicies'] == null ? null : (map['privateLinkServiceNetworkPolicies'] as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      resourceNavigationLinks: map['resourceNavigationLinks'] == null ? null : (pulumi.Input.decodeList<ResourceNavigationLink>(map['resourceNavigationLinks'], (value) => ResourceNavigationLink.fromMap((value as Map).cast<String, dynamic>()))).input(),
      routeTable: map['routeTable'] == null ? null : (RouteTable.fromMap((map['routeTable'] as Map).cast<String, dynamic>())).input(),
      serviceAssociationLinks: map['serviceAssociationLinks'] == null ? null : (pulumi.Input.decodeList<ServiceAssociationLink>(map['serviceAssociationLinks'], (value) => ServiceAssociationLink.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceEndpointPolicies: map['serviceEndpointPolicies'] == null ? null : (pulumi.Input.decodeList<ServiceEndpointPolicy>(map['serviceEndpointPolicies'], (value) => ServiceEndpointPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceEndpoints: map['serviceEndpoints'] == null ? null : (pulumi.Input.decodeList<ServiceEndpointPropertiesFormat>(map['serviceEndpoints'], (value) => ServiceEndpointPropertiesFormat.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceGateway: map['serviceGateway'] == null ? null : (SubResource.fromMap((map['serviceGateway'] as Map).cast<String, dynamic>())).input(),
      sharingScope: map['sharingScope'] == null ? null : (map['sharingScope'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

