// ignore_for_file: unused_element, unnecessary_cast

import 'address_space_response.dart';
import 'sub_resource_response.dart';
import 'virtual_network_bgp_communities_response.dart';
import 'virtual_network_encryption_response.dart';

/// Result data returned by getVirtualNetworkPeering.
class GetVirtualNetworkPeeringResult {
  /// Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network.
  final bool? allowForwardedTraffic;
  /// If gateway links can be used in remote virtual networking to link to this virtual network.
  final bool? allowGatewayTransit;
  /// Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space.
  final bool? allowVirtualNetworkAccess;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// If we need to verify the provisioning state of the remote gateway.
  final bool? doNotVerifyRemoteGateways;
  /// Whether only Ipv6 address space is peered for subnet peering.
  final bool? enableOnlyIPv6Peering;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The local address space of the local virtual network that is peered.
  final AddressSpaceResponse? localAddressSpace;
  /// List of local subnet names that are subnet peered with remote virtual network.
  final List<String>? localSubnetNames;
  /// The current local address space of the local virtual network that is peered.
  final AddressSpaceResponse? localVirtualNetworkAddressSpace;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Whether complete virtual network address space is peered.
  final bool? peerCompleteVnets;
  /// The status of the virtual network peering.
  final String? peeringState;
  /// The peering sync status of the virtual network peering.
  final String? peeringSyncLevel;
  /// The provisioning state of the virtual network peering resource.
  final String provisioningState;
  /// The reference to the address space peered with the remote virtual network.
  final AddressSpaceResponse? remoteAddressSpace;
  /// The reference to the remote virtual network's Bgp Communities.
  final VirtualNetworkBgpCommunitiesResponse? remoteBgpCommunities;
  /// List of remote subnet names from remote virtual network that are subnet peered.
  final List<String>? remoteSubnetNames;
  /// The reference to the remote virtual network. The remote virtual network can be in the same or different region (preview). See here to register for the preview and learn more (https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-create-peering).
  final SubResourceResponse? remoteVirtualNetwork;
  /// The reference to the current address space of the remote virtual network.
  final AddressSpaceResponse? remoteVirtualNetworkAddressSpace;
  /// The reference to the remote virtual network's encryption
  final VirtualNetworkEncryptionResponse remoteVirtualNetworkEncryption;
  /// The resourceGuid property of the Virtual Network peering resource.
  final String resourceGuid;
  /// Resource type.
  final String? type;
  /// If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  final bool? useRemoteGateways;

  /// Creates a new [GetVirtualNetworkPeeringResult].
  /// [allowForwardedTraffic] Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network.
  /// [allowGatewayTransit] If gateway links can be used in remote virtual networking to link to this virtual network.
  /// [allowVirtualNetworkAccess] Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [doNotVerifyRemoteGateways] If we need to verify the provisioning state of the remote gateway.
  /// [enableOnlyIPv6Peering] Whether only Ipv6 address space is peered for subnet peering.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [localAddressSpace] The local address space of the local virtual network that is peered.
  /// [localSubnetNames] List of local subnet names that are subnet peered with remote virtual network.
  /// [localVirtualNetworkAddressSpace] The current local address space of the local virtual network that is peered.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerCompleteVnets] Whether complete virtual network address space is peered.
  /// [peeringState] The status of the virtual network peering.
  /// [peeringSyncLevel] The peering sync status of the virtual network peering.
  /// [provisioningState] The provisioning state of the virtual network peering resource.
  /// [remoteAddressSpace] The reference to the address space peered with the remote virtual network.
  /// [remoteBgpCommunities] The reference to the remote virtual network's Bgp Communities.
  /// [remoteSubnetNames] List of remote subnet names from remote virtual network that are subnet peered.
  /// [remoteVirtualNetwork] The reference to the remote virtual network. The remote virtual network can be in the same or different region (preview). See here to register for the preview and learn more (https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-create-peering).
  /// [remoteVirtualNetworkAddressSpace] The reference to the current address space of the remote virtual network.
  /// [remoteVirtualNetworkEncryption] The reference to the remote virtual network's encryption
  /// [resourceGuid] The resourceGuid property of the Virtual Network peering resource.
  /// [type] Resource type.
  /// [useRemoteGateways] If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  const GetVirtualNetworkPeeringResult({
    this.allowForwardedTraffic,
    this.allowGatewayTransit,
    this.allowVirtualNetworkAccess,
    required this.azureApiVersion,
    this.doNotVerifyRemoteGateways,
    this.enableOnlyIPv6Peering,
    required this.etag,
    this.id,
    this.localAddressSpace,
    this.localSubnetNames,
    this.localVirtualNetworkAddressSpace,
    this.name,
    this.peerCompleteVnets,
    this.peeringState,
    this.peeringSyncLevel,
    required this.provisioningState,
    this.remoteAddressSpace,
    this.remoteBgpCommunities,
    this.remoteSubnetNames,
    this.remoteVirtualNetwork,
    this.remoteVirtualNetworkAddressSpace,
    required this.remoteVirtualNetworkEncryption,
    required this.resourceGuid,
    this.type,
    this.useRemoteGateways,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowForwardedTraffic': ?allowForwardedTraffic,
      'allowGatewayTransit': ?allowGatewayTransit,
      'allowVirtualNetworkAccess': ?allowVirtualNetworkAccess,
      'azureApiVersion': azureApiVersion,
      'doNotVerifyRemoteGateways': ?doNotVerifyRemoteGateways,
      'enableOnlyIPv6Peering': ?enableOnlyIPv6Peering,
      'etag': etag,
      'id': ?id,
      'localAddressSpace': ?localAddressSpace?.toMap(),
      'localSubnetNames': ?localSubnetNames,
      'localVirtualNetworkAddressSpace': ?localVirtualNetworkAddressSpace?.toMap(),
      'name': ?name,
      'peerCompleteVnets': ?peerCompleteVnets,
      'peeringState': ?peeringState,
      'peeringSyncLevel': ?peeringSyncLevel,
      'provisioningState': provisioningState,
      'remoteAddressSpace': ?remoteAddressSpace?.toMap(),
      'remoteBgpCommunities': ?remoteBgpCommunities?.toMap(),
      'remoteSubnetNames': ?remoteSubnetNames,
      'remoteVirtualNetwork': ?remoteVirtualNetwork?.toMap(),
      'remoteVirtualNetworkAddressSpace': ?remoteVirtualNetworkAddressSpace?.toMap(),
      'remoteVirtualNetworkEncryption': remoteVirtualNetworkEncryption.toMap(),
      'resourceGuid': resourceGuid,
      'type': ?type,
      'useRemoteGateways': ?useRemoteGateways,
    };
  }

  factory GetVirtualNetworkPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkPeeringResult(
      allowForwardedTraffic: (() { final guardedValue = map['allowForwardedTraffic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowGatewayTransit: (() { final guardedValue = map['allowGatewayTransit']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowVirtualNetworkAccess: (() { final guardedValue = map['allowVirtualNetworkAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      doNotVerifyRemoteGateways: (() { final guardedValue = map['doNotVerifyRemoteGateways']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableOnlyIPv6Peering: (() { final guardedValue = map['enableOnlyIPv6Peering']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localAddressSpace: (() { final guardedValue = map['localAddressSpace']; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      localSubnetNames: (() { final guardedValue = map['localSubnetNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      localVirtualNetworkAddressSpace: (() { final guardedValue = map['localVirtualNetworkAddressSpace']; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerCompleteVnets: (() { final guardedValue = map['peerCompleteVnets']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      peeringState: (() { final guardedValue = map['peeringState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peeringSyncLevel: (() { final guardedValue = map['peeringSyncLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      remoteAddressSpace: (() { final guardedValue = map['remoteAddressSpace']; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      remoteBgpCommunities: (() { final guardedValue = map['remoteBgpCommunities']; if (guardedValue == null) return null; return VirtualNetworkBgpCommunitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      remoteSubnetNames: (() { final guardedValue = map['remoteSubnetNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      remoteVirtualNetwork: (() { final guardedValue = map['remoteVirtualNetwork']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      remoteVirtualNetworkAddressSpace: (() { final guardedValue = map['remoteVirtualNetworkAddressSpace']; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      remoteVirtualNetworkEncryption: VirtualNetworkEncryptionResponse.fromMap((map['remoteVirtualNetworkEncryption']! as Map).cast<String, dynamic>()),
      resourceGuid: map['resourceGuid'] as String,
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useRemoteGateways: (() { final guardedValue = map['useRemoteGateways']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
