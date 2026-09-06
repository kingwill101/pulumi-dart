// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_ipconfiguration.dart';
import 'delegation.dart';
import 'ipam_pool_prefix_allocation.dart';
import 'network_security_group.dart';
import 'route_table.dart';
import 'service_endpoint_policy.dart';
import 'service_endpoint_properties_format.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_subnet_args_doc}
/// The set of arguments for Subnet.
/// {@endtemplate}
/// {@macro pulumi_network_subnet_args_doc}
class SubnetArgs {
  /// The address prefix for the subnet.
  final pulumi.Input<String?>? addressPrefix;
  /// List of address prefixes for the subnet.
  final pulumi.Input<List<String>?>? addressPrefixes;
  /// Application gateway IP configurations of virtual network resource.
  final pulumi.Input<List<ApplicationGatewayIPConfiguration>?>? applicationGatewayIPConfigurations;
  /// Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  final pulumi.Input<bool?>? defaultOutboundAccess;
  /// An array of references to the delegations on the subnet.
  final pulumi.Input<List<Delegation>?>? delegations;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Array of IpAllocation which reference this subnet.
  final pulumi.Input<List<SubResource>?>? ipAllocations;
  /// A list of IPAM Pools for allocating IP address prefixes.
  final pulumi.Input<List<IpamPoolPrefixAllocation>?>? ipamPoolPrefixAllocations;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// Nat gateway associated with this subnet.
  final pulumi.Input<SubResource?>? natGateway;
  /// The reference to the NetworkSecurityGroup resource.
  final pulumi.Input<NetworkSecurityGroup?>? networkSecurityGroup;
  /// Enable or Disable apply network policies on private end point in the subnet.
  final pulumi.Input<dynamic>? privateEndpointNetworkPolicies;
  /// Enable or Disable apply network policies on private link service in the subnet.
  final pulumi.Input<dynamic>? privateLinkServiceNetworkPolicies;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The reference to the RouteTable resource.
  final pulumi.Input<RouteTable?>? routeTable;
  /// An array of service endpoint policies.
  final pulumi.Input<List<ServiceEndpointPolicy>?>? serviceEndpointPolicies;
  /// An array of service endpoints.
  final pulumi.Input<List<ServiceEndpointPropertiesFormat>?>? serviceEndpoints;
  /// Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  final pulumi.Input<dynamic>? sharingScope;
  /// The name of the subnet.
  final pulumi.Input<String?>? subnetName;
  /// Resource type.
  final pulumi.Input<String?>? type;
  /// The name of the virtual network.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [SubnetArgs].
  /// [addressPrefix] The address prefix for the subnet.
  /// [addressPrefixes] List of address prefixes for the subnet.
  /// [applicationGatewayIPConfigurations] Application gateway IP configurations of virtual network resource.
  /// [defaultOutboundAccess] Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  /// [delegations] An array of references to the delegations on the subnet.
  /// [id] Resource ID.
  /// [ipAllocations] Array of IpAllocation which reference this subnet.
  /// [ipamPoolPrefixAllocations] A list of IPAM Pools for allocating IP address prefixes.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [natGateway] Nat gateway associated with this subnet.
  /// [networkSecurityGroup] The reference to the NetworkSecurityGroup resource.
  /// [privateEndpointNetworkPolicies] Enable or Disable apply network policies on private end point in the subnet.
  /// [privateLinkServiceNetworkPolicies] Enable or Disable apply network policies on private link service in the subnet.
  /// [resourceGroupName] The name of the resource group.
  /// [routeTable] The reference to the RouteTable resource.
  /// [serviceEndpointPolicies] An array of service endpoint policies.
  /// [serviceEndpoints] An array of service endpoints.
  /// [sharingScope] Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  /// [subnetName] The name of the subnet.
  /// [type] Resource type.
  /// [virtualNetworkName] The name of the virtual network.
  SubnetArgs({
    this.addressPrefix,
    this.addressPrefixes,
    this.applicationGatewayIPConfigurations,
    this.defaultOutboundAccess,
    this.delegations,
    this.id,
    this.ipAllocations,
    this.ipamPoolPrefixAllocations,
    this.name,
    this.natGateway,
    this.networkSecurityGroup,
    pulumi.Input<dynamic>? privateEndpointNetworkPolicies,
    pulumi.Input<dynamic>? privateLinkServiceNetworkPolicies,
    required this.resourceGroupName,
    this.routeTable,
    this.serviceEndpointPolicies,
    this.serviceEndpoints,
    this.sharingScope,
    this.subnetName,
    this.type,
    required this.virtualNetworkName,
  }) : privateEndpointNetworkPolicies = privateEndpointNetworkPolicies ?? pulumi.Input.fromValue('Disabled'), privateLinkServiceNetworkPolicies = privateLinkServiceNetworkPolicies ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixes': ?addressPrefixes,
      'applicationGatewayIPConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayIPConfiguration>, List<Map<String, dynamic>>>(applicationGatewayIPConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultOutboundAccess': ?defaultOutboundAccess,
      'delegations': ?pulumi.Input.mapOptionalInputValue<List<Delegation>, List<Map<String, dynamic>>>(delegations, (value) => pulumi.Input.encodeList<Delegation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'ipAllocations': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(ipAllocations, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipamPoolPrefixAllocations': ?pulumi.Input.mapOptionalInputValue<List<IpamPoolPrefixAllocation>, List<Map<String, dynamic>>>(ipamPoolPrefixAllocations, (value) => pulumi.Input.encodeList<IpamPoolPrefixAllocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'natGateway': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(natGateway, (value) => value.toMap()),
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityGroup, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'privateEndpointNetworkPolicies': ?privateEndpointNetworkPolicies,
      'privateLinkServiceNetworkPolicies': ?privateLinkServiceNetworkPolicies,
      'resourceGroupName': resourceGroupName,
      'routeTable': ?pulumi.Input.mapOptionalInputValue<RouteTable, Map<String, dynamic>>(routeTable, (value) => value.toMap()),
      'serviceEndpointPolicies': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpointPolicy>, List<Map<String, dynamic>>>(serviceEndpointPolicies, (value) => pulumi.Input.encodeList<ServiceEndpointPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpointPropertiesFormat>, List<Map<String, dynamic>>>(serviceEndpoints, (value) => pulumi.Input.encodeList<ServiceEndpointPropertiesFormat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sharingScope': ?sharingScope,
      'subnetName': ?subnetName,
      'type': ?type,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory SubnetArgs.fromMap(Map<String, dynamic> map) {
    return SubnetArgs(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      applicationGatewayIPConfigurations: (() { final guardedValue = map['applicationGatewayIPConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayIPConfiguration>(guardedValue, (value) => ApplicationGatewayIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultOutboundAccess: (() { final guardedValue = map['defaultOutboundAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delegations: (() { final guardedValue = map['delegations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Delegation>(guardedValue, (value) => Delegation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAllocations: (() { final guardedValue = map['ipAllocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipamPoolPrefixAllocations: (() { final guardedValue = map['ipamPoolPrefixAllocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpamPoolPrefixAllocation>(guardedValue, (value) => IpamPoolPrefixAllocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGateway: (() { final guardedValue = map['natGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkSecurityGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointNetworkPolicies: (() { final guardedValue = map['privateEndpointNetworkPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      privateLinkServiceNetworkPolicies: (() { final guardedValue = map['privateLinkServiceNetworkPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeTable: (() { final guardedValue = map['routeTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceEndpointPolicies: (() { final guardedValue = map['serviceEndpointPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceEndpointPolicy>(guardedValue, (value) => ServiceEndpointPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceEndpoints: (() { final guardedValue = map['serviceEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceEndpointPropertiesFormat>(guardedValue, (value) => ServiceEndpointPropertiesFormat.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sharingScope: (() { final guardedValue = map['sharingScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      subnetName: (() { final guardedValue = map['subnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkName: pulumi.Input.fromValue(map['virtualNetworkName'] as String),
    );
  }
}
