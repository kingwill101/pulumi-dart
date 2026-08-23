// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_delegation.dart';
import 'subnet_ip_address_pool.dart';

/// Input properties used for looking up and filtering Subnet resources.
class SubnetState {
  /// The address prefixes to use for the subnet.
  ///
  /// &gt; **Note:** Exactly one of `addressPrefixes` or `ipAddressPool` must be specified.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// Enable default outbound access to the internet for the subnet. Defaults to `true`.
  final pulumi.Input<bool>? defaultOutboundAccessEnabled;
  /// One or more `delegation` blocks as defined below.
  final pulumi.Input<List<SubnetDelegation>>? delegations;
  /// An `ipAddressPool` block as defined below.
  ///
  /// &gt; **Note:** Exactly one of `addressPrefixes` or `ipAddressPool` must be specified.
  final pulumi.Input<SubnetIpAddressPool>? ipAddressPool;
  /// The name of the subnet. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Enable or Disable network policies for the private endpoint on the subnet. Possible values are `Disabled`, `Enabled`, `NetworkSecurityGroupEnabled` and `RouteTableEnabled`. Defaults to `Disabled`.
  ///
  /// &gt; **NOTE:** If you don't want to use network policies like user-defined Routes and Network Security Groups, you need to set `privateEndpointNetworkPolicies` in the subnet to `Disabled`. This setting only applies to Private Endpoints in the Subnet and affects all Private Endpoints in the Subnet. For other resources in the Subnet, access is controlled based via the Network Security Group which can be configured using the `azure.network.SubnetNetworkSecurityGroupAssociation` resource.
  ///
  /// &gt; **NOTE:** If you want to use network policies like user-defined Routes and Network Security Groups, you need to set the `privateEndpointNetworkPolicies` in the Subnet to `Enabled`/`NetworkSecurityGroupEnabled`/`RouteTableEnabled`. This setting only applies to Private Endpoints in the Subnet and affects all Private Endpoints in the Subnet. For other resources in the Subnet, access is controlled based via the Network Security Group which can be configured using the `azure.network.SubnetNetworkSecurityGroupAssociation` resource.
  ///
  /// &gt; **NOTE:** See more details from [Manage network policies for Private Endpoints](https://learn.microsoft.com/en-gb/azure/private-link/disable-private-endpoint-network-policy?tabs=network-policy-portal).
  final pulumi.Input<String>? privateEndpointNetworkPolicies;
  /// Enable or Disable network policies for the private link service on the subnet. Defaults to `true`.
  ///
  /// &gt; **NOTE:** When configuring Azure Private Link service, the explicit setting `privateLinkServiceNetworkPoliciesEnabled` must be set to `false` in the subnet since Private Link Service does not support network policies like user-defined Routes and Network Security Groups. This setting only affects the Private Link service. For other resources in the subnet, access is controlled based on the Network Security Group which can be configured using the `azure.network.SubnetNetworkSecurityGroupAssociation` resource. See more details from [Manage network policies for Private Link Services](https://learn.microsoft.com/en-gb/azure/private-link/disable-private-link-service-network-policy?tabs=private-link-network-policy-powershell).
  final pulumi.Input<bool>? privateLinkServiceNetworkPoliciesEnabled;
  /// The name of the resource group in which to create the subnet. This must be the resource group that the virtual network resides in. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The list of IDs of Service Endpoint Policies to associate with the subnet.
  final pulumi.Input<List<String>>? serviceEndpointPolicyIds;
  /// The list of Service endpoints to associate with the subnet. Possible values include: `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage`, `Microsoft.Storage.Global` and `Microsoft.Web`.
  ///
  /// &gt; **NOTE:** In order to use `Microsoft.Storage.Global` service endpoint (which allows access to virtual networks in other regions), you must enable the `AllowGlobalTagsForStorage` feature in your subscription. This is currently a preview feature, please see the [official documentation](https://learn.microsoft.com/en-us/azure/storage/common/storage-network-security?tabs=azure-cli#enabling-access-to-virtual-networks-in-other-regions-preview) for more information.
  final pulumi.Input<List<String>>? serviceEndpoints;
  /// The sharing scope of the subnet. Possible value is `Tenant`.
  ///
  /// &gt; **Note:** This property cannot be set if `defaultOutboundAccessEnabled` is set to `true`.
  ///
  /// &gt; **Note:** The `sharingScope` property is only available to users who have been explicitly registered and granted access by the Azure Networking Product Group.
  final pulumi.Input<String>? sharingScope;
  /// The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualNetworkName;

  /// Creates a new [SubnetState].
  /// [addressPrefixes] The address prefixes to use for the subnet.
  /// [defaultOutboundAccessEnabled] Enable default outbound access to the internet for the subnet. Defaults to `true`.
  /// [delegations] One or more `delegation` blocks as defined below.
  /// [ipAddressPool] An `ipAddressPool` block as defined below.
  /// [name] The name of the subnet. Changing this forces a new resource to be created.
  /// [privateEndpointNetworkPolicies] Enable or Disable network policies for the private endpoint on the subnet. Possible values are `Disabled`, `Enabled`, `NetworkSecurityGroupEnabled` and `RouteTableEnabled`. Defaults to `Disabled`.
  /// [privateLinkServiceNetworkPoliciesEnabled] Enable or Disable network policies for the private link service on the subnet. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the subnet. This must be the resource group that the virtual network resides in. Changing this forces a new resource to be created.
  /// [serviceEndpointPolicyIds] The list of IDs of Service Endpoint Policies to associate with the subnet.
  /// [serviceEndpoints] The list of Service endpoints to associate with the subnet. Possible values include: `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage`, `Microsoft.Storage.Global` and `Microsoft.Web`.
  /// [sharingScope] The sharing scope of the subnet. Possible value is `Tenant`.
  /// [virtualNetworkName] The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created.
  const SubnetState({
    this.addressPrefixes,
    this.defaultOutboundAccessEnabled,
    this.delegations,
    this.ipAddressPool,
    this.name,
    this.privateEndpointNetworkPolicies,
    this.privateLinkServiceNetworkPoliciesEnabled,
    this.resourceGroupName,
    this.serviceEndpointPolicyIds,
    this.serviceEndpoints,
    this.sharingScope,
    this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'defaultOutboundAccessEnabled': ?defaultOutboundAccessEnabled,
      'delegations': ?pulumi.Input.mapOptionalInputValue<List<SubnetDelegation>, List<Map<String, dynamic>>>(delegations, (value) => pulumi.Input.encodeList<SubnetDelegation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddressPool': ?pulumi.Input.mapOptionalInputValue<SubnetIpAddressPool, Map<String, dynamic>>(ipAddressPool, (value) => value.toMap()),
      'name': ?name,
      'privateEndpointNetworkPolicies': ?privateEndpointNetworkPolicies,
      'privateLinkServiceNetworkPoliciesEnabled': ?privateLinkServiceNetworkPoliciesEnabled,
      'resourceGroupName': ?resourceGroupName,
      'serviceEndpointPolicyIds': ?serviceEndpointPolicyIds,
      'serviceEndpoints': ?serviceEndpoints,
      'sharingScope': ?sharingScope,
      'virtualNetworkName': ?virtualNetworkName,
    };
  }

  factory SubnetState.fromMap(Map<String, dynamic> map) {
    return SubnetState(
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultOutboundAccessEnabled: (() { final guardedValue = map['defaultOutboundAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delegations: (() { final guardedValue = map['delegations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetDelegation>(guardedValue, (value) => SubnetDelegation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipAddressPool: (() { final guardedValue = map['ipAddressPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetIpAddressPool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointNetworkPolicies: (() { final guardedValue = map['privateEndpointNetworkPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkServiceNetworkPoliciesEnabled: (() { final guardedValue = map['privateLinkServiceNetworkPoliciesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceEndpointPolicyIds: (() { final guardedValue = map['serviceEndpointPolicyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceEndpoints: (() { final guardedValue = map['serviceEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sharingScope: (() { final guardedValue = map['sharingScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkName: (() { final guardedValue = map['virtualNetworkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
