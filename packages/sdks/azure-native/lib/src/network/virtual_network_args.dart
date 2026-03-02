// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'dhcp_options.dart';
import 'extended_location.dart';
import 'sub_resource.dart';
import 'subnet_network.dart';
import 'virtual_network_bgp_communities.dart';
import 'virtual_network_encryption.dart';
import 'virtual_network_peering_network.dart';

/// {@template pulumi_network_virtual_network_args_doc}
/// The set of arguments for VirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_args_doc}
class VirtualNetworkArgs {
  /// The AddressSpace that contains an array of IP address ranges that can be used by subnets.
  final pulumi.Input<AddressSpace>? addressSpace;
  /// Bgp Communities sent over ExpressRoute with each route corresponding to a prefix in this VNET.
  final pulumi.Input<VirtualNetworkBgpCommunities>? bgpCommunities;
  /// The DDoS protection plan associated with the virtual network.
  final pulumi.Input<SubResource>? ddosProtectionPlan;
  /// The dhcpOptions that contains an array of DNS servers available to VMs deployed in the virtual network.
  final pulumi.Input<DhcpOptions>? dhcpOptions;
  /// Indicates if DDoS protection is enabled for all the protected resources in the virtual network. It requires a DDoS protection plan associated with the resource.
  final pulumi.Input<bool>? enableDdosProtection;
  /// Indicates if VM protection is enabled for all the subnets in the virtual network.
  final pulumi.Input<bool>? enableVmProtection;
  /// Indicates if encryption is enabled on virtual network and if VM without encryption is allowed in encrypted VNet.
  final pulumi.Input<VirtualNetworkEncryption>? encryption;
  /// The extended location of the virtual network.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The FlowTimeout value (in minutes) for the Virtual Network
  final pulumi.Input<int>? flowTimeoutInMinutes;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Array of IpAllocation which reference this VNET.
  final pulumi.Input<List<SubResource>>? ipAllocations;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Private Endpoint VNet Policies.
  final pulumi.Input<String>? privateEndpointVNetPolicies;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// A list of subnets in a Virtual Network.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<SubnetNetwork>>? subnets;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the virtual network.
  final pulumi.Input<String>? virtualNetworkName;
  /// A list of peerings in a Virtual Network.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<VirtualNetworkPeeringNetwork>>? virtualNetworkPeerings;

  /// Creates a new [VirtualNetworkArgs].
  /// [addressSpace] The AddressSpace that contains an array of IP address ranges that can be used by subnets.
  /// [bgpCommunities] Bgp Communities sent over ExpressRoute with each route corresponding to a prefix in this VNET.
  /// [ddosProtectionPlan] The DDoS protection plan associated with the virtual network.
  /// [dhcpOptions] The dhcpOptions that contains an array of DNS servers available to VMs deployed in the virtual network.
  /// [enableDdosProtection] Indicates if DDoS protection is enabled for all the protected resources in the virtual network. It requires a DDoS protection plan associated with the resource.
  /// [enableVmProtection] Indicates if VM protection is enabled for all the subnets in the virtual network.
  /// [encryption] Indicates if encryption is enabled on virtual network and if VM without encryption is allowed in encrypted VNet.
  /// [extendedLocation] The extended location of the virtual network.
  /// [flowTimeoutInMinutes] The FlowTimeout value (in minutes) for the Virtual Network
  /// [id] Resource ID.
  /// [ipAllocations] Array of IpAllocation which reference this VNET.
  /// [location] Resource location.
  /// [privateEndpointVNetPolicies] Private Endpoint VNet Policies.
  /// [resourceGroupName] The name of the resource group.
  /// [subnets] A list of subnets in a Virtual Network.
  /// [tags] Resource tags.
  /// [virtualNetworkName] The name of the virtual network.
  /// [virtualNetworkPeerings] A list of peerings in a Virtual Network.
  VirtualNetworkArgs({
    this.addressSpace,
    this.bgpCommunities,
    this.ddosProtectionPlan,
    this.dhcpOptions,
    this.enableDdosProtection,
    this.enableVmProtection,
    this.encryption,
    this.extendedLocation,
    this.flowTimeoutInMinutes,
    this.id,
    this.ipAllocations,
    this.location,
    this.privateEndpointVNetPolicies,
    required this.resourceGroupName,
    this.subnets,
    this.tags,
    this.virtualNetworkName,
    this.virtualNetworkPeerings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?pulumi.Input.mapOptionalInputValue<AddressSpace, Map<String, dynamic>>(addressSpace, (value) => value.toMap()),
      'bgpCommunities': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkBgpCommunities, Map<String, dynamic>>(bgpCommunities, (value) => value.toMap()),
      'ddosProtectionPlan': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(ddosProtectionPlan, (value) => value.toMap()),
      'dhcpOptions': ?pulumi.Input.mapOptionalInputValue<DhcpOptions, Map<String, dynamic>>(dhcpOptions, (value) => value.toMap()),
      'enableDdosProtection': ?enableDdosProtection,
      'enableVmProtection': ?enableVmProtection,
      'encryption': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'flowTimeoutInMinutes': ?flowTimeoutInMinutes,
      'id': ?id,
      'ipAllocations': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(ipAllocations, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'privateEndpointVNetPolicies': ?privateEndpointVNetPolicies,
      'resourceGroupName': resourceGroupName,
      'subnets': ?subnets,
      'tags': ?tags,
      'virtualNetworkName': ?virtualNetworkName,
      'virtualNetworkPeerings': ?virtualNetworkPeerings,
    };
  }

  factory VirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkArgs(
      addressSpace: map['addressSpace'] == null ? null : (AddressSpace.fromMap((map['addressSpace'] as Map).cast<String, dynamic>())).input(),
      bgpCommunities: map['bgpCommunities'] == null ? null : (VirtualNetworkBgpCommunities.fromMap((map['bgpCommunities'] as Map).cast<String, dynamic>())).input(),
      ddosProtectionPlan: map['ddosProtectionPlan'] == null ? null : (SubResource.fromMap((map['ddosProtectionPlan'] as Map).cast<String, dynamic>())).input(),
      dhcpOptions: map['dhcpOptions'] == null ? null : (DhcpOptions.fromMap((map['dhcpOptions'] as Map).cast<String, dynamic>())).input(),
      enableDdosProtection: map['enableDdosProtection'] == null ? null : (map['enableDdosProtection'] as bool).input(),
      enableVmProtection: map['enableVmProtection'] == null ? null : (map['enableVmProtection'] as bool).input(),
      encryption: map['encryption'] == null ? null : (VirtualNetworkEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      flowTimeoutInMinutes: map['flowTimeoutInMinutes'] == null ? null : (map['flowTimeoutInMinutes'] as int).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ipAllocations: map['ipAllocations'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['ipAllocations'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      privateEndpointVNetPolicies: map['privateEndpointVNetPolicies'] == null ? null : (map['privateEndpointVNetPolicies'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnets: map['subnets'] == null ? null : ((map['subnets'] as List).cast<SubnetNetwork>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualNetworkName: map['virtualNetworkName'] == null ? null : (map['virtualNetworkName'] as String).input(),
      virtualNetworkPeerings: map['virtualNetworkPeerings'] == null ? null : ((map['virtualNetworkPeerings'] as List).cast<VirtualNetworkPeeringNetwork>()).input(),
    );
  }
}

