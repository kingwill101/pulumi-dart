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

/// Virtual Network resource.
class VirtualNetworkResponse {
  /// The AddressSpace that contains an array of IP address ranges that can be used by subnets.
  final pulumi.Input<AddressSpaceResponse>? addressSpace;
  /// Bgp Communities sent over ExpressRoute with each route corresponding to a prefix in this VNET.
  final pulumi.Input<VirtualNetworkBgpCommunitiesResponse>? bgpCommunities;
  /// The DDoS protection plan associated with the virtual network.
  final pulumi.Input<SubResourceResponse>? ddosProtectionPlan;
  /// A reference to the default public nat gateway being used by this virtual network resource.
  final pulumi.Input<SubResourceResponse> defaultPublicNatGateway;
  /// The dhcpOptions that contains an array of DNS servers available to VMs deployed in the virtual network.
  final pulumi.Input<DhcpOptionsResponse>? dhcpOptions;
  /// Indicates if DDoS protection is enabled for all the protected resources in the virtual network. It requires a DDoS protection plan associated with the resource.
  final pulumi.Input<bool>? enableDdosProtection;
  /// Indicates if VM protection is enabled for all the subnets in the virtual network.
  final pulumi.Input<bool>? enableVmProtection;
  /// Indicates if encryption is enabled on virtual network and if VM without encryption is allowed in encrypted VNet.
  final pulumi.Input<VirtualNetworkEncryptionResponse>? encryption;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The extended location of the virtual network.
  final pulumi.Input<ExtendedLocationResponse>? extendedLocation;
  /// A collection of references to flow log resources.
  final pulumi.Input<List<FlowLogResponse>> flowLogs;
  /// The FlowTimeout value (in minutes) for the Virtual Network
  final pulumi.Input<int>? flowTimeoutInMinutes;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Array of IpAllocation which reference this VNET.
  final pulumi.Input<List<SubResourceResponse>>? ipAllocations;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// Private Endpoint VNet Policies.
  final pulumi.Input<String>? privateEndpointVNetPolicies;
  /// The provisioning state of the virtual network resource.
  final pulumi.Input<String> provisioningState;
  /// The resourceGuid property of the Virtual Network resource.
  final pulumi.Input<String> resourceGuid;
  /// A list of subnets in a Virtual Network.
  final pulumi.Input<List<SubnetResponse>>? subnets;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type.
  final pulumi.Input<String> type;
  /// A list of peerings in a Virtual Network.
  final pulumi.Input<List<VirtualNetworkPeeringResponse>>? virtualNetworkPeerings;

  /// Creates a new [VirtualNetworkResponse].
  /// [addressSpace] The AddressSpace that contains an array of IP address ranges that can be used by subnets.
  /// [bgpCommunities] Bgp Communities sent over ExpressRoute with each route corresponding to a prefix in this VNET.
  /// [ddosProtectionPlan] The DDoS protection plan associated with the virtual network.
  /// [defaultPublicNatGateway] A reference to the default public nat gateway being used by this virtual network resource.
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
  const VirtualNetworkResponse({
    this.addressSpace,
    this.bgpCommunities,
    this.ddosProtectionPlan,
    required this.defaultPublicNatGateway,
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
      'addressSpace': ?pulumi.Input.mapOptionalInputValue<AddressSpaceResponse, Map<String, dynamic>>(addressSpace, (value) => value.toMap()),
      'bgpCommunities': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkBgpCommunitiesResponse, Map<String, dynamic>>(bgpCommunities, (value) => value.toMap()),
      'ddosProtectionPlan': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(ddosProtectionPlan, (value) => value.toMap()),
      'defaultPublicNatGateway': pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(defaultPublicNatGateway, (value) => value.toMap()),
      'dhcpOptions': ?pulumi.Input.mapOptionalInputValue<DhcpOptionsResponse, Map<String, dynamic>>(dhcpOptions, (value) => value.toMap()),
      'enableDdosProtection': ?enableDdosProtection,
      'enableVmProtection': ?enableVmProtection,
      'encryption': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkEncryptionResponse, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'etag': etag,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'flowLogs': pulumi.Input.mapInputValue<List<FlowLogResponse>, List<Map<String, dynamic>>>(flowLogs, (value) => pulumi.Input.encodeList<FlowLogResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'flowTimeoutInMinutes': ?flowTimeoutInMinutes,
      'id': ?id,
      'ipAllocations': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(ipAllocations, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': name,
      'privateEndpointVNetPolicies': ?privateEndpointVNetPolicies,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<SubnetResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'type': type,
      'virtualNetworkPeerings': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkPeeringResponse>, List<Map<String, dynamic>>>(virtualNetworkPeerings, (value) => pulumi.Input.encodeList<VirtualNetworkPeeringResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualNetworkResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkResponse(
      addressSpace: (() { final guardedValue = map['addressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bgpCommunities: (() { final guardedValue = map['bgpCommunities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkBgpCommunitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ddosProtectionPlan: (() { final guardedValue = map['ddosProtectionPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultPublicNatGateway: pulumi.Input.fromValue(SubResourceResponse.fromMap((map['defaultPublicNatGateway']! as Map).cast<String, dynamic>())),
      dhcpOptions: (() { final guardedValue = map['dhcpOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DhcpOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableDdosProtection: (() { final guardedValue = map['enableDdosProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableVmProtection: (() { final guardedValue = map['enableVmProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flowLogs: pulumi.Input.fromValue(pulumi.Input.decodeList<FlowLogResponse>(map['flowLogs']!, (value) => FlowLogResponse.fromMap((value as Map).cast<String, dynamic>()))),
      flowTimeoutInMinutes: (() { final guardedValue = map['flowTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAllocations: (() { final guardedValue = map['ipAllocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateEndpointVNetPolicies: (() { final guardedValue = map['privateEndpointVNetPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetResponse>(guardedValue, (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      virtualNetworkPeerings: (() { final guardedValue = map['virtualNetworkPeerings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkPeeringResponse>(guardedValue, (value) => VirtualNetworkPeeringResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

