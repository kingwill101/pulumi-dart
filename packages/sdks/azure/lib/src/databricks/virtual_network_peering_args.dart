// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databricks_virtual_network_peering_virtual_network_peering_args_doc}
/// The set of arguments for VirtualNetworkPeering.
/// {@endtemplate}
/// {@macro pulumi_databricks_virtual_network_peering_virtual_network_peering_args_doc}
class VirtualNetworkPeeringArgs {
  /// Can the forwarded traffic from the VMs in the local virtual network be forwarded to the remote virtual network? Defaults to `false`.
  final pulumi.Input<bool>? allowForwardedTraffic;
  /// Can the gateway links be used in the remote virtual network to link to the Databricks virtual network? Defaults to `false`.
  final pulumi.Input<bool>? allowGatewayTransit;
  /// Can the VMs in the local virtual network space access the VMs in the remote virtual network space? Defaults to `true`.
  final pulumi.Input<bool>? allowVirtualNetworkAccess;
  /// Specifies the name of the Databricks Virtual Network Peering resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of address blocks reserved for the remote virtual network in CIDR notation. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> remoteAddressSpacePrefixes;
  /// The ID of the remote virtual network. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The remote virtual network should be in the same region as the databricks workspace. Please see the [product documentation](https://learn.microsoft.com/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering) for more information.
  final pulumi.Input<String> remoteVirtualNetworkId;
  /// The name of the Resource Group in which the Databricks Virtual Network Peering should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Can remote gateways be used on the Databricks virtual network? Defaults to `false`.
  ///
  /// > **Note:** If the `use_remote_gateways` is set to `true`, and `allow_gateway_transit` on the remote peering is also `true`, the virtual network will use the gateways of the remote virtual network for transit. Only one peering can have this flag set to `true`. `use_remote_gateways` cannot be set if the virtual network already has a gateway.
  final pulumi.Input<bool>? useRemoteGateways;
  /// The ID of the Databricks Workspace that this Databricks Virtual Network Peering is bound. Changing this forces a new resource to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [VirtualNetworkPeeringArgs].
  /// [allowForwardedTraffic] Can the forwarded traffic from the VMs in the local virtual network be forwarded to the remote virtual network? Defaults to `false`.
  /// [allowGatewayTransit] Can the gateway links be used in the remote virtual network to link to the Databricks virtual network? Defaults to `false`.
  /// [allowVirtualNetworkAccess] Can the VMs in the local virtual network space access the VMs in the remote virtual network space? Defaults to `true`.
  /// [name] Specifies the name of the Databricks Virtual Network Peering resource. Changing this forces a new resource to be created.
  /// [remoteAddressSpacePrefixes] A list of address blocks reserved for the remote virtual network in CIDR notation. Changing this forces a new resource to be created.
  /// [remoteVirtualNetworkId] The ID of the remote virtual network. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Databricks Virtual Network Peering should exist. Changing this forces a new resource to be created.
  /// [useRemoteGateways] Can remote gateways be used on the Databricks virtual network? Defaults to `false`.
  /// [workspaceId] The ID of the Databricks Workspace that this Databricks Virtual Network Peering is bound. Changing this forces a new resource to be created.
  VirtualNetworkPeeringArgs({
    pulumi.Output<bool>? allowForwardedTraffic,
    pulumi.Output<bool>? allowGatewayTransit,
    pulumi.Output<bool>? allowVirtualNetworkAccess,
    pulumi.Output<String>? name,
    required pulumi.Output<List<String>> remoteAddressSpacePrefixes,
    required pulumi.Output<String> remoteVirtualNetworkId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? useRemoteGateways,
    required pulumi.Output<String> workspaceId,
  }) :
      allowForwardedTraffic = pulumi.Input.asOptionalInput<bool>(allowForwardedTraffic),
      allowGatewayTransit = pulumi.Input.asOptionalInput<bool>(allowGatewayTransit),
      allowVirtualNetworkAccess = pulumi.Input.asOptionalInput<bool>(allowVirtualNetworkAccess),
      name = pulumi.Input.asOptionalInput<String>(name),
      remoteAddressSpacePrefixes = pulumi.Input.asInput<List<String>>(remoteAddressSpacePrefixes),
      remoteVirtualNetworkId = pulumi.Input.asInput<String>(remoteVirtualNetworkId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      useRemoteGateways = pulumi.Input.asOptionalInput<bool>(useRemoteGateways),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowForwardedTraffic': ?allowForwardedTraffic,
      'allowGatewayTransit': ?allowGatewayTransit,
      'allowVirtualNetworkAccess': ?allowVirtualNetworkAccess,
      'name': ?name,
      'remoteAddressSpacePrefixes': remoteAddressSpacePrefixes,
      'remoteVirtualNetworkId': remoteVirtualNetworkId,
      'resourceGroupName': resourceGroupName,
      'useRemoteGateways': ?useRemoteGateways,
      'workspaceId': workspaceId,
    };
  }

  factory VirtualNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPeeringArgs(
      allowForwardedTraffic: map['allowForwardedTraffic'] == null ? null : pulumi.Output.create<bool>(map['allowForwardedTraffic'] as bool),
      allowGatewayTransit: map['allowGatewayTransit'] == null ? null : pulumi.Output.create<bool>(map['allowGatewayTransit'] as bool),
      allowVirtualNetworkAccess: map['allowVirtualNetworkAccess'] == null ? null : pulumi.Output.create<bool>(map['allowVirtualNetworkAccess'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      remoteAddressSpacePrefixes: pulumi.Output.create<List<String>>((map['remoteAddressSpacePrefixes'] as List).cast<String>()),
      remoteVirtualNetworkId: pulumi.Output.create<String>(map['remoteVirtualNetworkId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      useRemoteGateways: map['useRemoteGateways'] == null ? null : pulumi.Output.create<bool>(map['useRemoteGateways'] as bool),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

