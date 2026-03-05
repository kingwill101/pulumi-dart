// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'dhcp_options_response.dart';
import 'extended_location_response.dart';
import 'flow_log_response.dart';
import 'sub_resource_response.dart';
import 'subnet_response.dart';
import 'virtual_network_bgp_communities_response.dart';
import 'virtual_network_encryption_response.dart';
import 'virtual_network_peering_response.dart';

/// Result data returned by getVirtualNetwork.
class GetVirtualNetworkResult {
  /// The AddressSpace that contains an array of IP address ranges that can be used by subnets.
  final AddressSpaceResponse? addressSpace;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Bgp Communities sent over ExpressRoute with each route corresponding to a prefix in this VNET.
  final VirtualNetworkBgpCommunitiesResponse? bgpCommunities;
  /// The DDoS protection plan associated with the virtual network.
  final SubResourceResponse? ddosProtectionPlan;
  /// The dhcpOptions that contains an array of DNS servers available to VMs deployed in the virtual network.
  final DhcpOptionsResponse? dhcpOptions;
  /// Indicates if DDoS protection is enabled for all the protected resources in the virtual network. It requires a DDoS protection plan associated with the resource.
  final bool? enableDdosProtection;
  /// Indicates if VM protection is enabled for all the subnets in the virtual network.
  final bool? enableVmProtection;
  /// Indicates if encryption is enabled on virtual network and if VM without encryption is allowed in encrypted VNet.
  final VirtualNetworkEncryptionResponse? encryption;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The extended location of the virtual network.
  final ExtendedLocationResponse? extendedLocation;
  /// A collection of references to flow log resources.
  final List<FlowLogResponse> flowLogs;
  /// The FlowTimeout value (in minutes) for the Virtual Network
  final int? flowTimeoutInMinutes;
  /// Resource ID.
  final String? id;
  /// Array of IpAllocation which reference this VNET.
  final List<SubResourceResponse>? ipAllocations;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// Private Endpoint VNet Policies.
  final String? privateEndpointVNetPolicies;
  /// The provisioning state of the virtual network resource.
  final String provisioningState;
  /// The resourceGuid property of the Virtual Network resource.
  final String resourceGuid;
  /// A list of subnets in a Virtual Network.
  final List<SubnetResponse>? subnets;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// A list of peerings in a Virtual Network.
  final List<VirtualNetworkPeeringResponse>? virtualNetworkPeerings;

  /// Creates a new [GetVirtualNetworkResult].
  /// [addressSpace] The AddressSpace that contains an array of IP address ranges that can be used by subnets.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bgpCommunities] Bgp Communities sent over ExpressRoute with each route corresponding to a prefix in this VNET.
  /// [ddosProtectionPlan] The DDoS protection plan associated with the virtual network.
  /// [dhcpOptions] The dhcpOptions that contains an array of DNS servers available to VMs deployed in the virtual network.
  /// [enableDdosProtection] Indicates if DDoS protection is enabled for all the protected resources in the virtual network. It requires a DDoS protection plan associated with the resource.
  /// [enableVmProtection] Indicates if VM protection is enabled for all the subnets in the virtual network.
  /// [encryption] Indicates if encryption is enabled on virtual network and if VM without encryption is allowed in encrypted VNet.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [extendedLocation] The extended location of the virtual network.
  /// [flowLogs] A collection of references to flow log resources.
  /// [flowTimeoutInMinutes] The FlowTimeout value (in minutes) for the Virtual Network
  /// [id] Resource ID.
  /// [ipAllocations] Array of IpAllocation which reference this VNET.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [privateEndpointVNetPolicies] Private Endpoint VNet Policies.
  /// [provisioningState] The provisioning state of the virtual network resource.
  /// [resourceGuid] The resourceGuid property of the Virtual Network resource.
  /// [subnets] A list of subnets in a Virtual Network.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualNetworkPeerings] A list of peerings in a Virtual Network.
  GetVirtualNetworkResult({
    this.addressSpace,
    required this.azureApiVersion,
    this.bgpCommunities,
    this.ddosProtectionPlan,
    this.dhcpOptions,
    this.enableDdosProtection,
    this.enableVmProtection,
    this.encryption,
    required this.etag,
    this.extendedLocation,
    required this.flowLogs,
    this.flowTimeoutInMinutes,
    this.id,
    this.ipAllocations,
    this.location,
    required this.name,
    this.privateEndpointVNetPolicies,
    required this.provisioningState,
    required this.resourceGuid,
    this.subnets,
    this.tags,
    required this.type,
    this.virtualNetworkPeerings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?addressSpace?.toMap(),
      'azureApiVersion': azureApiVersion,
      'bgpCommunities': ?bgpCommunities?.toMap(),
      'ddosProtectionPlan': ?ddosProtectionPlan?.toMap(),
      'dhcpOptions': ?dhcpOptions?.toMap(),
      'enableDdosProtection': ?enableDdosProtection,
      'enableVmProtection': ?enableVmProtection,
      'encryption': ?encryption?.toMap(),
      'etag': etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'flowLogs': pulumi.Input.encodeList<FlowLogResponse, Map<String, dynamic>>(flowLogs, (value) => value.toMap()),
      'flowTimeoutInMinutes': ?flowTimeoutInMinutes,
      'id': ?id,
      'ipAllocations': ?(() { final guardedValue = ipAllocations; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': name,
      'privateEndpointVNetPolicies': ?privateEndpointVNetPolicies,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'subnets': ?(() { final guardedValue = subnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': type,
      'virtualNetworkPeerings': ?(() { final guardedValue = virtualNetworkPeerings; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualNetworkPeeringResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkResult(
      addressSpace: (() { final guardedValue = map['addressSpace']; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      bgpCommunities: (() { final guardedValue = map['bgpCommunities']; if (guardedValue == null) return null; return VirtualNetworkBgpCommunitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ddosProtectionPlan: (() { final guardedValue = map['ddosProtectionPlan']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dhcpOptions: (() { final guardedValue = map['dhcpOptions']; if (guardedValue == null) return null; return DhcpOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enableDdosProtection: (() { final guardedValue = map['enableDdosProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableVmProtection: (() { final guardedValue = map['enableVmProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return VirtualNetworkEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: map['etag'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      flowLogs: pulumi.Input.decodeList<FlowLogResponse>(map['flowLogs']!, (value) => FlowLogResponse.fromMap((value as Map).cast<String, dynamic>())),
      flowTimeoutInMinutes: (() { final guardedValue = map['flowTimeoutInMinutes']; if (guardedValue == null) return null; return guardedValue as int; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAllocations: (() { final guardedValue = map['ipAllocations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      privateEndpointVNetPolicies: (() { final guardedValue = map['privateEndpointVNetPolicies']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubnetResponse>(guardedValue, (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      virtualNetworkPeerings: (() { final guardedValue = map['virtualNetworkPeerings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkPeeringResponse>(guardedValue, (value) => VirtualNetworkPeeringResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

