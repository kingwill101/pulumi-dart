// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_ddos_protection_plan.dart';
import 'virtual_network_encryption.dart';
import 'virtual_network_ip_address_pool.dart';
import 'virtual_network_subnet.dart';

/// {@template pulumi_network_virtual_network_virtual_network_args_doc}
/// The set of arguments for VirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_virtual_network_args_doc}
class VirtualNetworkArgs {
  /// The address space that is used the virtual network. You can supply more than one address space.
  ///
  /// > **Note:** Exactly one of `address_space` or `ip_address_pool` must be specified.
  final pulumi.Input<List<String>>? addressSpaces;
  /// The BGP community attribute in format `<as-number>:<community-value>`.
  ///
  /// > **NOTE** The `as-number` segment is the Microsoft ASN, which is always `12076` for now.
  final pulumi.Input<String>? bgpCommunity;
  /// A `ddos_protection_plan` block as documented below.
  final pulumi.Input<VirtualNetworkDdosProtectionPlan>? ddosProtectionPlan;
  /// List of IP addresses of DNS servers
  ///
  /// > **NOTE** Since `dns_servers` can be configured both inline and via the separate `azure.network.VirtualNetworkDnsServers` resource, we have to explicitly set it to empty slice (`[]`) to remove it.
  final pulumi.Input<List<String>>? dnsServers;
  /// Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created.
  final pulumi.Input<String>? edgeZone;
  /// A `encryption` block as defined below.
  final pulumi.Input<VirtualNetworkEncryption>? encryption;
  /// The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between `4` and `30` minutes.
  final pulumi.Input<int>? flowTimeoutInMinutes;
  /// One or more `ip_address_pool` blocks as defined below. Only one association of each IP type(IPv4 or IPv6) is allowed.
  ///
  /// > **Note:** Exactly one of `address_space` or `ip_address_pool` must be specified.
  final pulumi.Input<List<VirtualNetworkIpAddressPool>>? ipAddressPools;
  /// The location/region where the virtual network is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the virtual network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Private Endpoint VNet Policies for the Virtual Network. Possible values are `Disabled` and `Basic`. Defaults to `Disabled`.
  final pulumi.Input<String>? privateEndpointVnetPolicies;
  /// The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Can be specified multiple times to define multiple subnets. Each `subnet` block supports fields documented below.
  ///
  /// > **NOTE** Since `subnet` can be configured both inline and via the separate `azure.network.Subnet` resource, we have to explicitly set it to empty slice (`[]`) to remove it.
  final pulumi.Input<List<VirtualNetworkSubnet>>? subnets;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualNetworkArgs].
  /// [addressSpaces] The address space that is used the virtual network. You can supply more than one address space.
  /// [bgpCommunity] The BGP community attribute in format `<as-number>:<community-value>`.
  /// [ddosProtectionPlan] A `ddos_protection_plan` block as documented below.
  /// [dnsServers] List of IP addresses of DNS servers
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created.
  /// [encryption] A `encryption` block as defined below.
  /// [flowTimeoutInMinutes] The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between `4` and `30` minutes.
  /// [ipAddressPools] One or more `ip_address_pool` blocks as defined below. Only one association of each IP type(IPv4 or IPv6) is allowed.
  /// [location] The location/region where the virtual network is created. Changing this forces a new resource to be created.
  /// [name] The name of the virtual network. Changing this forces a new resource to be created.
  /// [privateEndpointVnetPolicies] The Private Endpoint VNet Policies for the Virtual Network. Possible values are `Disabled` and `Basic`. Defaults to `Disabled`.
  /// [resourceGroupName] The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created.
  /// [subnets] Can be specified multiple times to define multiple subnets. Each `subnet` block supports fields documented below.
  /// [tags] A mapping of tags to assign to the resource.
  VirtualNetworkArgs({
    this.addressSpaces,
    this.bgpCommunity,
    this.ddosProtectionPlan,
    this.dnsServers,
    this.edgeZone,
    this.encryption,
    this.flowTimeoutInMinutes,
    this.ipAddressPools,
    this.location,
    this.name,
    this.privateEndpointVnetPolicies,
    required this.resourceGroupName,
    this.subnets,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpaces': ?addressSpaces,
      'bgpCommunity': ?bgpCommunity,
      'ddosProtectionPlan': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkDdosProtectionPlan, Map<String, dynamic>>(ddosProtectionPlan, (value) => value.toMap()),
      'dnsServers': ?dnsServers,
      'edgeZone': ?edgeZone,
      'encryption': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'flowTimeoutInMinutes': ?flowTimeoutInMinutes,
      'ipAddressPools': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkIpAddressPool>, List<Map<String, dynamic>>>(ipAddressPools, (value) => pulumi.Input.encodeList<VirtualNetworkIpAddressPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'privateEndpointVnetPolicies': ?privateEndpointVnetPolicies,
      'resourceGroupName': resourceGroupName,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkSubnet>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<VirtualNetworkSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory VirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkArgs(
      addressSpaces: map['addressSpaces'] == null ? null : ((map['addressSpaces'] as List).cast<String>()).input(),
      bgpCommunity: map['bgpCommunity'] == null ? null : (map['bgpCommunity'] as String).input(),
      ddosProtectionPlan: map['ddosProtectionPlan'] == null ? null : (VirtualNetworkDdosProtectionPlan.fromMap((map['ddosProtectionPlan'] as Map).cast<String, dynamic>())).input(),
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers'] as List).cast<String>()).input(),
      edgeZone: map['edgeZone'] == null ? null : (map['edgeZone'] as String).input(),
      encryption: map['encryption'] == null ? null : (VirtualNetworkEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      flowTimeoutInMinutes: map['flowTimeoutInMinutes'] == null ? null : (map['flowTimeoutInMinutes'] as int).input(),
      ipAddressPools: map['ipAddressPools'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkIpAddressPool>(map['ipAddressPools'], (value) => VirtualNetworkIpAddressPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      privateEndpointVnetPolicies: map['privateEndpointVnetPolicies'] == null ? null : (map['privateEndpointVnetPolicies'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnets: map['subnets'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkSubnet>(map['subnets'], (value) => VirtualNetworkSubnet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

