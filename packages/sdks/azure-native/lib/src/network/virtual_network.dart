// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'dhcp_options.dart';
import 'extended_location.dart';
import 'sub_resource.dart';
import 'subnet.dart';
import 'virtual_network_bgp_communities.dart';
import 'virtual_network_encryption.dart';
import 'virtual_network_peering.dart';

/// Virtual Network resource.
class VirtualNetwork {
  /// The AddressSpace that contains an array of IP address ranges that can be used by subnets.
  final AddressSpace? addressSpace;
  /// Bgp Communities sent over ExpressRoute with each route corresponding to a prefix in this VNET.
  final VirtualNetworkBgpCommunities? bgpCommunities;
  /// The DDoS protection plan associated with the virtual network.
  final SubResource? ddosProtectionPlan;
  /// The dhcpOptions that contains an array of DNS servers available to VMs deployed in the virtual network.
  final DhcpOptions? dhcpOptions;
  /// Indicates if DDoS protection is enabled for all the protected resources in the virtual network. It requires a DDoS protection plan associated with the resource.
  final bool? enableDdosProtection;
  /// Indicates if VM protection is enabled for all the subnets in the virtual network.
  final bool? enableVmProtection;
  /// Indicates if encryption is enabled on virtual network and if VM without encryption is allowed in encrypted VNet.
  final VirtualNetworkEncryption? encryption;
  /// The extended location of the virtual network.
  final ExtendedLocation? extendedLocation;
  /// The FlowTimeout value (in minutes) for the Virtual Network
  final int? flowTimeoutInMinutes;
  /// Resource ID.
  final String? id;
  /// Array of IpAllocation which reference this VNET.
  final List<SubResource>? ipAllocations;
  /// Resource location.
  final String? location;
  /// Private Endpoint VNet Policies.
  final String? privateEndpointVNetPolicies;
  /// A list of subnets in a Virtual Network.
  final List<Subnet>? subnets;
  /// Resource tags.
  final Map<String, String>? tags;
  /// A list of peerings in a Virtual Network.
  final List<VirtualNetworkPeering>? virtualNetworkPeerings;

  /// Creates a new [VirtualNetwork].
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
  /// [subnets] A list of subnets in a Virtual Network.
  /// [tags] Resource tags.
  /// [virtualNetworkPeerings] A list of peerings in a Virtual Network.
  VirtualNetwork({
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
    this.subnets,
    this.tags,
    this.virtualNetworkPeerings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?addressSpace == null ? null : addressSpace!.toMap(),
      'bgpCommunities': ?bgpCommunities == null ? null : bgpCommunities!.toMap(),
      'ddosProtectionPlan': ?ddosProtectionPlan == null ? null : ddosProtectionPlan!.toMap(),
      'dhcpOptions': ?dhcpOptions == null ? null : dhcpOptions!.toMap(),
      'enableDdosProtection': ?enableDdosProtection,
      'enableVmProtection': ?enableVmProtection,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'flowTimeoutInMinutes': ?flowTimeoutInMinutes,
      'id': ?id,
      'ipAllocations': ?ipAllocations == null ? null : pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(ipAllocations!, (value) => value.toMap()),
      'location': ?location,
      'privateEndpointVNetPolicies': ?privateEndpointVNetPolicies,
      'subnets': ?subnets == null ? null : pulumi.Input.encodeList<Subnet, Map<String, dynamic>>(subnets!, (value) => value.toMap()),
      'tags': ?tags,
      'virtualNetworkPeerings': ?virtualNetworkPeerings == null ? null : pulumi.Input.encodeList<VirtualNetworkPeering, Map<String, dynamic>>(virtualNetworkPeerings!, (value) => value.toMap()),
    };
  }

  factory VirtualNetwork.fromMap(Map<String, dynamic> map) {
    return VirtualNetwork(
      addressSpace: map['addressSpace'] == null ? null : AddressSpace.fromMap((map['addressSpace'] as Map).cast<String, dynamic>()),
      bgpCommunities: map['bgpCommunities'] == null ? null : VirtualNetworkBgpCommunities.fromMap((map['bgpCommunities'] as Map).cast<String, dynamic>()),
      ddosProtectionPlan: map['ddosProtectionPlan'] == null ? null : SubResource.fromMap((map['ddosProtectionPlan'] as Map).cast<String, dynamic>()),
      dhcpOptions: map['dhcpOptions'] == null ? null : DhcpOptions.fromMap((map['dhcpOptions'] as Map).cast<String, dynamic>()),
      enableDdosProtection: map['enableDdosProtection'] == null ? null : map['enableDdosProtection'] as bool,
      enableVmProtection: map['enableVmProtection'] == null ? null : map['enableVmProtection'] as bool,
      encryption: map['encryption'] == null ? null : VirtualNetworkEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      flowTimeoutInMinutes: map['flowTimeoutInMinutes'] == null ? null : map['flowTimeoutInMinutes'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      ipAllocations: map['ipAllocations'] == null ? null : pulumi.Input.decodeList<SubResource>(map['ipAllocations'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      privateEndpointVNetPolicies: map['privateEndpointVNetPolicies'] == null ? null : map['privateEndpointVNetPolicies'] as String,
      subnets: map['subnets'] == null ? null : pulumi.Input.decodeList<Subnet>(map['subnets'], (value) => Subnet.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      virtualNetworkPeerings: map['virtualNetworkPeerings'] == null ? null : pulumi.Input.decodeList<VirtualNetworkPeering>(map['virtualNetworkPeerings'], (value) => VirtualNetworkPeering.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

