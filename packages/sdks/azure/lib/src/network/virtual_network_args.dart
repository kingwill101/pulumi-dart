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
    pulumi.Output<List<String>>? addressSpaces,
    pulumi.Output<String>? bgpCommunity,
    pulumi.Output<VirtualNetworkDdosProtectionPlan>? ddosProtectionPlan,
    pulumi.Output<List<String>>? dnsServers,
    pulumi.Output<String>? edgeZone,
    pulumi.Output<VirtualNetworkEncryption>? encryption,
    pulumi.Output<int>? flowTimeoutInMinutes,
    pulumi.Output<List<VirtualNetworkIpAddressPool>>? ipAddressPools,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? privateEndpointVnetPolicies,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<VirtualNetworkSubnet>>? subnets,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      addressSpaces = pulumi.Input.asOptionalInput<List<String>>(addressSpaces),
      bgpCommunity = pulumi.Input.asOptionalInput<String>(bgpCommunity),
      ddosProtectionPlan = pulumi.Input.asOptionalInput<VirtualNetworkDdosProtectionPlan>(ddosProtectionPlan),
      dnsServers = pulumi.Input.asOptionalInput<List<String>>(dnsServers),
      edgeZone = pulumi.Input.asOptionalInput<String>(edgeZone),
      encryption = pulumi.Input.asOptionalInput<VirtualNetworkEncryption>(encryption),
      flowTimeoutInMinutes = pulumi.Input.asOptionalInput<int>(flowTimeoutInMinutes),
      ipAddressPools = pulumi.Input.asOptionalInput<List<VirtualNetworkIpAddressPool>>(ipAddressPools),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateEndpointVnetPolicies = pulumi.Input.asOptionalInput<String>(privateEndpointVnetPolicies),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnets = pulumi.Input.asOptionalInput<List<VirtualNetworkSubnet>>(subnets),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      addressSpaces: map['addressSpaces'] == null ? null : pulumi.Output.create<List<String>>((map['addressSpaces'] as List).cast<String>()),
      bgpCommunity: map['bgpCommunity'] == null ? null : pulumi.Output.create<String>(map['bgpCommunity'] as String),
      ddosProtectionPlan: map['ddosProtectionPlan'] == null ? null : pulumi.Output.create<VirtualNetworkDdosProtectionPlan>(VirtualNetworkDdosProtectionPlan.fromMap((map['ddosProtectionPlan'] as Map).cast<String, dynamic>())),
      dnsServers: map['dnsServers'] == null ? null : pulumi.Output.create<List<String>>((map['dnsServers'] as List).cast<String>()),
      edgeZone: map['edgeZone'] == null ? null : pulumi.Output.create<String>(map['edgeZone'] as String),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<VirtualNetworkEncryption>(VirtualNetworkEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      flowTimeoutInMinutes: map['flowTimeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['flowTimeoutInMinutes'] as int),
      ipAddressPools: map['ipAddressPools'] == null ? null : pulumi.Output.create<List<VirtualNetworkIpAddressPool>>(pulumi.Input.decodeList<VirtualNetworkIpAddressPool>(map['ipAddressPools'], (value) => VirtualNetworkIpAddressPool.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateEndpointVnetPolicies: map['privateEndpointVnetPolicies'] == null ? null : pulumi.Output.create<String>(map['privateEndpointVnetPolicies'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnets: map['subnets'] == null ? null : pulumi.Output.create<List<VirtualNetworkSubnet>>(pulumi.Input.decodeList<VirtualNetworkSubnet>(map['subnets'], (value) => VirtualNetworkSubnet.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

