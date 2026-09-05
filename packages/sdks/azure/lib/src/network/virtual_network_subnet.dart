// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_subnet_delegation.dart';

class VirtualNetworkSubnet {
  /// The address prefixes to use for the subnet.
  final pulumi.Input<List<String>> addressPrefixes;
  /// Enable default outbound access to the internet for the subnet. Defaults to `true`.
  final pulumi.Input<bool?>? defaultOutboundAccessEnabled;
  /// One or more `delegation` blocks as defined below.
  final pulumi.Input<VirtualNetworkSubnetDelegation?>? delegation;
  /// The ID of this subnet.
  final pulumi.Input<String?>? id;
  /// The name of the subnet.
  final pulumi.Input<String> name;
  /// Enable or Disable network policies for the private endpoint on the subnet. Possible values are `Disabled`, `Enabled`, `NetworkSecurityGroupEnabled` and `RouteTableEnabled`. Defaults to `Disabled`.
  ///
  /// &gt; **Note:** If you don't want to use network policies like user-defined Routes and Network Security Groups, you need to set `privateEndpointNetworkPolicies` in the subnet to `Disabled`. This setting only applies to Private Endpoints in the Subnet and affects all Private Endpoints in the Subnet.
  ///
  /// &gt; **Note:** If you want to use network policies like user-defined Routes and Network Security Groups, you need to set the `privateEndpointNetworkPolicies` in the Subnet to `Enabled`/`NetworkSecurityGroupEnabled`/`RouteTableEnabled`. This setting only applies to Private Endpoints in the Subnet and affects all Private Endpoints in the Subnet.
  ///
  /// &gt; **Note:** See more details from [Manage network policies for Private Endpoints](https://learn.microsoft.com/en-gb/azure/private-link/disable-private-endpoint-network-policy?tabs=network-policy-portal).
  final pulumi.Input<String?>? privateEndpointNetworkPolicies;
  /// Enable or Disable network policies for the private link service on the subnet. Defaults to `true`.
  ///
  /// &gt; **Note:** When configuring Azure Private Link service, the explicit setting `privateLinkServiceNetworkPoliciesEnabled` must be set to `false` in the subnet since Private Link Service does not support network policies like user-defined Routes and Network Security Groups. This setting only affects the Private Link service. For other resources in the subnet, access is controlled based on the Network Security Group which can be configured using the `azure.network.SubnetNetworkSecurityGroupAssociation` resource. See more details from [Manage network policies for Private Link Services](https://learn.microsoft.com/en-gb/azure/private-link/disable-private-link-service-network-policy?tabs=private-link-network-policy-powershell).
  final pulumi.Input<bool?>? privateLinkServiceNetworkPoliciesEnabled;
  /// The ID of the Route Table that should be associated with this subnet.
  ///
  /// &gt; **Note:** If you declare the subnet inline inside `azure.network.VirtualNetwork`, set `routeTableId` in that `subnet` block — do not also create an `azure.network.SubnetRouteTableAssociation` for the same subnet. The association resource is for when you manage the subnet as a separate `azure.network.Subnet` resource.
  final pulumi.Input<String?>? routeTableId;
  /// The Network Security Group to associate with the subnet. (Referenced by `id`, ie. `azurerm_network_security_group.example.id`)
  final pulumi.Input<String?>? securityGroup;
  /// The list of IDs of Service Endpoint Policies to associate with the subnet.
  final pulumi.Input<List<String>?>? serviceEndpointPolicyIds;
  /// The list of Service endpoints to associate with the subnet. Possible values include: `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage`, `Microsoft.Storage.Global` and `Microsoft.Web`.
  final pulumi.Input<List<String>?>? serviceEndpoints;

  /// Creates a new [VirtualNetworkSubnet].
  /// [addressPrefixes] The address prefixes to use for the subnet.
  /// [defaultOutboundAccessEnabled] Enable default outbound access to the internet for the subnet. Defaults to `true`.
  /// [delegation] One or more `delegation` blocks as defined below.
  /// [id] The ID of this subnet.
  /// [name] The name of the subnet.
  /// [privateEndpointNetworkPolicies] Enable or Disable network policies for the private endpoint on the subnet. Possible values are `Disabled`, `Enabled`, `NetworkSecurityGroupEnabled` and `RouteTableEnabled`. Defaults to `Disabled`.
  /// [privateLinkServiceNetworkPoliciesEnabled] Enable or Disable network policies for the private link service on the subnet. Defaults to `true`.
  /// [routeTableId] The ID of the Route Table that should be associated with this subnet.
  /// [securityGroup] The Network Security Group to associate with the subnet. (Referenced by `id`, ie. `azurerm_network_security_group.example.id`)
  /// [serviceEndpointPolicyIds] The list of IDs of Service Endpoint Policies to associate with the subnet.
  /// [serviceEndpoints] The list of Service endpoints to associate with the subnet. Possible values include: `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage`, `Microsoft.Storage.Global` and `Microsoft.Web`.
  const VirtualNetworkSubnet({
    required this.addressPrefixes,
    this.defaultOutboundAccessEnabled,
    this.delegation,
    this.id,
    required this.name,
    this.privateEndpointNetworkPolicies,
    this.privateLinkServiceNetworkPoliciesEnabled,
    this.routeTableId,
    this.securityGroup,
    this.serviceEndpointPolicyIds,
    this.serviceEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'defaultOutboundAccessEnabled': ?defaultOutboundAccessEnabled,
      'delegation': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkSubnetDelegation, Map<String, dynamic>>(delegation, (value) => value.toMap()),
      'id': ?id,
      'name': name,
      'privateEndpointNetworkPolicies': ?privateEndpointNetworkPolicies,
      'privateLinkServiceNetworkPoliciesEnabled': ?privateLinkServiceNetworkPoliciesEnabled,
      'routeTableId': ?routeTableId,
      'securityGroup': ?securityGroup,
      'serviceEndpointPolicyIds': ?serviceEndpointPolicyIds,
      'serviceEndpoints': ?serviceEndpoints,
    };
  }

  factory VirtualNetworkSubnet.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnet(
      addressPrefixes: pulumi.Input.fromValue((map['addressPrefixes'] as List).cast<String>()),
      defaultOutboundAccessEnabled: (() { final guardedValue = map['defaultOutboundAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delegation: (() { final guardedValue = map['delegation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkSubnetDelegation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateEndpointNetworkPolicies: (() { final guardedValue = map['privateEndpointNetworkPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkServiceNetworkPoliciesEnabled: (() { final guardedValue = map['privateLinkServiceNetworkPoliciesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroup: (() { final guardedValue = map['securityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceEndpointPolicyIds: (() { final guardedValue = map['serviceEndpointPolicyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceEndpoints: (() { final guardedValue = map['serviceEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
