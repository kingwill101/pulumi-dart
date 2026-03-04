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

  /// A list of subnets in a Virtual Network.
  final pulumi.Input<List<Subnet>>? subnets;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// A list of peerings in a Virtual Network.
  final pulumi.Input<List<VirtualNetworkPeering>>? virtualNetworkPeerings;

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
      'addressSpace':
          ?pulumi.Input.mapOptionalInputValue<
            AddressSpace,
            Map<String, dynamic>
          >(addressSpace, (value) => value.toMap()),
      'bgpCommunities':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualNetworkBgpCommunities,
            Map<String, dynamic>
          >(bgpCommunities, (value) => value.toMap()),
      'ddosProtectionPlan':
          ?pulumi.Input.mapOptionalInputValue<
            SubResource,
            Map<String, dynamic>
          >(ddosProtectionPlan, (value) => value.toMap()),
      'dhcpOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DhcpOptions,
            Map<String, dynamic>
          >(dhcpOptions, (value) => value.toMap()),
      'enableDdosProtection': ?enableDdosProtection,
      'enableVmProtection': ?enableVmProtection,
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualNetworkEncryption,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'extendedLocation':
          ?pulumi.Input.mapOptionalInputValue<
            ExtendedLocation,
            Map<String, dynamic>
          >(extendedLocation, (value) => value.toMap()),
      'flowTimeoutInMinutes': ?flowTimeoutInMinutes,
      'id': ?id,
      'ipAllocations':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubResource>,
            List<Map<String, dynamic>>
          >(
            ipAllocations,
            (value) =>
                pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'location': ?location,
      'privateEndpointVNetPolicies': ?privateEndpointVNetPolicies,
      'subnets':
          ?pulumi.Input.mapOptionalInputValue<
            List<Subnet>,
            List<Map<String, dynamic>>
          >(
            subnets,
            (value) => pulumi.Input.encodeList<Subnet, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'tags': ?tags,
      'virtualNetworkPeerings':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualNetworkPeering>,
            List<Map<String, dynamic>>
          >(
            virtualNetworkPeerings,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualNetworkPeering,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory VirtualNetwork.fromMap(Map<String, dynamic> map) {
    return VirtualNetwork(
      addressSpace: (() {
        final guardedValue = map['addressSpace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      bgpCommunities: (() {
        final guardedValue = map['bgpCommunities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualNetworkBgpCommunities.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ddosProtectionPlan: (() {
        final guardedValue = map['ddosProtectionPlan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      dhcpOptions: (() {
        final guardedValue = map['dhcpOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DhcpOptions.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      enableDdosProtection: (() {
        final guardedValue = map['enableDdosProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableVmProtection: (() {
        final guardedValue = map['enableVmProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualNetworkEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExtendedLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      flowTimeoutInMinutes: (() {
        final guardedValue = map['flowTimeoutInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAllocations: (() {
        final guardedValue = map['ipAllocations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubResource>(
            guardedValue,
            (value) =>
                SubResource.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpointVNetPolicies: (() {
        final guardedValue = map['privateEndpointVNetPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnets: (() {
        final guardedValue = map['subnets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Subnet>(
            guardedValue,
            (value) => Subnet.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualNetworkPeerings: (() {
        final guardedValue = map['virtualNetworkPeerings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualNetworkPeering>(
            guardedValue,
            (value) => VirtualNetworkPeering.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
