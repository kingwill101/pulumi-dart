// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualNetworkPeering resources.
class VirtualNetworkPeeringState {
  /// A list of address blocks reserved for this virtual network in CIDR notation.
  final pulumi.Input<List<String>>? addressSpacePrefixes;
  /// Can the forwarded traffic from the VMs in the local virtual network be forwarded to the remote virtual network? Defaults to `false`.
  final pulumi.Input<bool>? allowForwardedTraffic;
  /// Can the gateway links be used in the remote virtual network to link to the Databricks virtual network? Defaults to `false`.
  final pulumi.Input<bool>? allowGatewayTransit;
  /// Can the VMs in the local virtual network space access the VMs in the remote virtual network space? Defaults to `true`.
  final pulumi.Input<bool>? allowVirtualNetworkAccess;
  /// Specifies the name of the Databricks Virtual Network Peering resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of address blocks reserved for the remote virtual network in CIDR notation. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? remoteAddressSpacePrefixes;
  /// The ID of the remote virtual network. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The remote virtual network should be in the same region as the databricks workspace. Please see the [product documentation](https://learn.microsoft.com/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering) for more information.
  final pulumi.Input<String>? remoteVirtualNetworkId;
  /// The name of the Resource Group in which the Databricks Virtual Network Peering should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Can remote gateways be used on the Databricks virtual network? Defaults to `false`.
  ///
  /// &gt; **Note:** If the `useRemoteGateways` is set to `true`, and `allowGatewayTransit` on the remote peering is also `true`, the virtual network will use the gateways of the remote virtual network for transit. Only one peering can have this flag set to `true`. `useRemoteGateways` cannot be set if the virtual network already has a gateway.
  final pulumi.Input<bool>? useRemoteGateways;
  /// The ID of the internal Virtual Network used by the DataBricks Workspace.
  ///
  /// &gt; **Note:** The `virtualNetworkId` field is the value you must supply to the `azure.network.VirtualNetworkPeering` resources `remoteVirtualNetworkId` field to successfully peer the Databricks Virtual Network with the remote virtual network.
  final pulumi.Input<String>? virtualNetworkId;
  /// The ID of the Databricks Workspace that this Databricks Virtual Network Peering is bound. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [VirtualNetworkPeeringState].
  /// [addressSpacePrefixes] A list of address blocks reserved for this virtual network in CIDR notation.
  /// [allowForwardedTraffic] Can the forwarded traffic from the VMs in the local virtual network be forwarded to the remote virtual network? Defaults to `false`.
  /// [allowGatewayTransit] Can the gateway links be used in the remote virtual network to link to the Databricks virtual network? Defaults to `false`.
  /// [allowVirtualNetworkAccess] Can the VMs in the local virtual network space access the VMs in the remote virtual network space? Defaults to `true`.
  /// [name] Specifies the name of the Databricks Virtual Network Peering resource. Changing this forces a new resource to be created.
  /// [remoteAddressSpacePrefixes] A list of address blocks reserved for the remote virtual network in CIDR notation. Changing this forces a new resource to be created.
  /// [remoteVirtualNetworkId] The ID of the remote virtual network. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Databricks Virtual Network Peering should exist. Changing this forces a new resource to be created.
  /// [useRemoteGateways] Can remote gateways be used on the Databricks virtual network? Defaults to `false`.
  /// [virtualNetworkId] The ID of the internal Virtual Network used by the DataBricks Workspace.
  /// [workspaceId] The ID of the Databricks Workspace that this Databricks Virtual Network Peering is bound. Changing this forces a new resource to be created.
  const VirtualNetworkPeeringState({
    this.addressSpacePrefixes,
    this.allowForwardedTraffic,
    this.allowGatewayTransit,
    this.allowVirtualNetworkAccess,
    this.name,
    this.remoteAddressSpacePrefixes,
    this.remoteVirtualNetworkId,
    this.resourceGroupName,
    this.useRemoteGateways,
    this.virtualNetworkId,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpacePrefixes': ?addressSpacePrefixes,
      'allowForwardedTraffic': ?allowForwardedTraffic,
      'allowGatewayTransit': ?allowGatewayTransit,
      'allowVirtualNetworkAccess': ?allowVirtualNetworkAccess,
      'name': ?name,
      'remoteAddressSpacePrefixes': ?remoteAddressSpacePrefixes,
      'remoteVirtualNetworkId': ?remoteVirtualNetworkId,
      'resourceGroupName': ?resourceGroupName,
      'useRemoteGateways': ?useRemoteGateways,
      'virtualNetworkId': ?virtualNetworkId,
      'workspaceId': ?workspaceId,
    };
  }

  factory VirtualNetworkPeeringState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPeeringState(
      addressSpacePrefixes: (() { final guardedValue = map['addressSpacePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowForwardedTraffic: (() { final guardedValue = map['allowForwardedTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowGatewayTransit: (() { final guardedValue = map['allowGatewayTransit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowVirtualNetworkAccess: (() { final guardedValue = map['allowVirtualNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteAddressSpacePrefixes: (() { final guardedValue = map['remoteAddressSpacePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      remoteVirtualNetworkId: (() { final guardedValue = map['remoteVirtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useRemoteGateways: (() { final guardedValue = map['useRemoteGateways']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
