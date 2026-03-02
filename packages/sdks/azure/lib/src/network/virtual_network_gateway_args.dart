// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_bgp_settings.dart';
import 'virtual_network_gateway_custom_route.dart';
import 'virtual_network_gateway_ip_configuration.dart';
import 'virtual_network_gateway_policy_group.dart';
import 'virtual_network_gateway_vpn_client_configuration.dart';

/// {@template pulumi_network_virtual_network_gateway_virtual_network_gateway_args_doc}
/// The set of arguments for VirtualNetworkGateway.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_gateway_virtual_network_gateway_args_doc}
class VirtualNetworkGatewayArgs {
  /// If `true`, an active-active Virtual Network Gateway will be created. An active-active gateway requires a `HighPerformance` or an `UltraPerformance` SKU. If `false`, an active-standby gateway will be created. Defaults to `false`.
  final pulumi.Input<bool>? activeActive;
  /// Is BGP Route Translation for NAT enabled? Defaults to `false`.
  final pulumi.Input<bool>? bgpRouteTranslationForNatEnabled;
  /// A `bgp_settings` block which is documented below. In this block the BGP specific settings can be defined.
  final pulumi.Input<VirtualNetworkGatewayBgpSettings>? bgpSettings;
  /// A `custom_route` block as defined below. Specifies a custom routes address space for a virtual network gateway and a VpnClient.
  final pulumi.Input<VirtualNetworkGatewayCustomRoute>? customRoute;
  /// The ID of the local network gateway through which outbound Internet traffic from the virtual network in which the gateway is created will be routed (*forced tunnelling*). Refer to the [Azure documentation on forced tunnelling](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-forced-tunneling-rm). If not specified, forced tunnelling is disabled.
  final pulumi.Input<String>? defaultLocalNetworkGatewayId;
  /// Is DNS forwarding enabled?
  final pulumi.Input<bool>? dnsForwardingEnabled;
  /// Specifies the Edge Zone within the Azure Region where this Virtual Network Gateway should exist. Changing this forces a new Virtual Network Gateway to be created.
  final pulumi.Input<String>? edgeZone;
  /// If `true`, BGP (Border Gateway Protocol) will be enabled for this Virtual Network Gateway. Defaults to `false`.
  final pulumi.Input<bool>? enableBgp;
  /// The Generation of the Virtual Network gateway. Possible values include `Generation1`, `Generation2` or `None`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The available values depend on the `type` and `sku` arguments - where `Generation2` is only value for a `sku` larger than `VpnGw2` or `VpnGw2AZ`.
  final pulumi.Input<String>? generation;
  /// One or more (up to 3) `ip_configuration` blocks documented below. Changing this forces a new resource to be created. An active-standby gateway requires exactly one `ip_configuration` block, an active-active gateway requires exactly two `ip_configuration` blocks whereas an active-active zone redundant gateway with P2S configuration requires exactly three `ip_configuration` blocks.
  final pulumi.Input<List<VirtualNetworkGatewayIpConfiguration>> ipConfigurations;
  /// Is IP Sec Replay Protection enabled? Defaults to `true`.
  final pulumi.Input<bool>? ipSecReplayProtectionEnabled;
  /// The location/region where the Virtual Network Gateway is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Virtual Network Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `policy_group` blocks as defined below.
  final pulumi.Input<List<VirtualNetworkGatewayPolicyGroup>>? policyGroups;
  /// Should private IP be enabled on this gateway for connections? Changing this forces a new resource to be created.
  final pulumi.Input<bool>? privateIpAddressEnabled;
  /// Is remote vnet traffic that is used to configure this gateway to accept traffic from other Azure Virtual Networks enabled? Defaults to `false`.
  final pulumi.Input<bool>? remoteVnetTrafficEnabled;
  /// The name of the resource group in which to create the Virtual Network Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Configuration of the size and capacity of the virtual network gateway. Valid options are `Basic`, `Standard`, `HighPerformance`, `UltraPerformance`, `ErGwScale`, `ErGw1AZ`, `ErGw2AZ`, `ErGw3AZ`, `VpnGw1`, `VpnGw2`, `VpnGw3`, `VpnGw4`,`VpnGw5`, `VpnGw1AZ`, `VpnGw2AZ`, `VpnGw3AZ`,`VpnGw4AZ` and `VpnGw5AZ` and depend on the `type`, `vpn_type` and `generation` arguments. A `PolicyBased` gateway only supports the `Basic` SKU. Further, the `UltraPerformance` and `ErGwScale` SKU is only supported by an `ExpressRoute` gateway.
  ///
  /// > **Note:** To build a UltraPerformance ExpressRoute Virtual Network gateway, the associated Public IP needs to be SKU "Basic" not "Standard"
  ///
  /// > **Note:** Not all SKUs (e.g. `ErGw1AZ`) are available in all regions. If you see `StatusCode=400 -- Original Error: Code="InvalidGatewaySkuSpecifiedForGatewayDeploymentType"` please try another region.
  final pulumi.Input<String> sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the Virtual Network Gateway. Valid options are `Vpn` or `ExpressRoute`. Changing the type forces a new resource to be created.
  final pulumi.Input<String> type;
  /// Is remote vnet traffic that is used to configure this gateway to accept traffic from remote Virtual WAN networks enabled? Defaults to `false`.
  final pulumi.Input<bool>? virtualWanTrafficEnabled;
  /// A `vpn_client_configuration` block which is documented below. In this block the Virtual Network Gateway can be configured to accept IPSec point-to-site connections.
  final pulumi.Input<VirtualNetworkGatewayVpnClientConfiguration>? vpnClientConfiguration;
  /// The routing type of the Virtual Network Gateway. Valid options are `RouteBased` or `PolicyBased`. Defaults to `RouteBased`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? vpnType;

  /// Creates a new [VirtualNetworkGatewayArgs].
  /// [activeActive] If `true`, an active-active Virtual Network Gateway will be created. An active-active gateway requires a `HighPerformance` or an `UltraPerformance` SKU. If `false`, an active-standby gateway will be created. Defaults to `false`.
  /// [bgpRouteTranslationForNatEnabled] Is BGP Route Translation for NAT enabled? Defaults to `false`.
  /// [bgpSettings] A `bgp_settings` block which is documented below. In this block the BGP specific settings can be defined.
  /// [customRoute] A `custom_route` block as defined below. Specifies a custom routes address space for a virtual network gateway and a VpnClient.
  /// [defaultLocalNetworkGatewayId] The ID of the local network gateway through which outbound Internet traffic from the virtual network in which the gateway is created will be routed (*forced tunnelling*). Refer to the [Azure documentation on forced tunnelling](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-forced-tunneling-rm). If not specified, forced tunnelling is disabled.
  /// [dnsForwardingEnabled] Is DNS forwarding enabled?
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Virtual Network Gateway should exist. Changing this forces a new Virtual Network Gateway to be created.
  /// [enableBgp] If `true`, BGP (Border Gateway Protocol) will be enabled for this Virtual Network Gateway. Defaults to `false`.
  /// [generation] The Generation of the Virtual Network gateway. Possible values include `Generation1`, `Generation2` or `None`. Changing this forces a new resource to be created.
  /// [ipConfigurations] One or more (up to 3) `ip_configuration` blocks documented below. Changing this forces a new resource to be created. An active-standby gateway requires exactly one `ip_configuration` block, an active-active gateway requires exactly two `ip_configuration` blocks whereas an active-active zone redundant gateway with P2S configuration requires exactly three `ip_configuration` blocks.
  /// [ipSecReplayProtectionEnabled] Is IP Sec Replay Protection enabled? Defaults to `true`.
  /// [location] The location/region where the Virtual Network Gateway is located. Changing this forces a new resource to be created.
  /// [name] The name of the Virtual Network Gateway. Changing this forces a new resource to be created.
  /// [policyGroups] One or more `policy_group` blocks as defined below.
  /// [privateIpAddressEnabled] Should private IP be enabled on this gateway for connections? Changing this forces a new resource to be created.
  /// [remoteVnetTrafficEnabled] Is remote vnet traffic that is used to configure this gateway to accept traffic from other Azure Virtual Networks enabled? Defaults to `false`.
  /// [resourceGroupName] The name of the resource group in which to create the Virtual Network Gateway. Changing this forces a new resource to be created.
  /// [sku] Configuration of the size and capacity of the virtual network gateway. Valid options are `Basic`, `Standard`, `HighPerformance`, `UltraPerformance`, `ErGwScale`, `ErGw1AZ`, `ErGw2AZ`, `ErGw3AZ`, `VpnGw1`, `VpnGw2`, `VpnGw3`, `VpnGw4`,`VpnGw5`, `VpnGw1AZ`, `VpnGw2AZ`, `VpnGw3AZ`,`VpnGw4AZ` and `VpnGw5AZ` and depend on the `type`, `vpn_type` and `generation` arguments. A `PolicyBased` gateway only supports the `Basic` SKU. Further, the `UltraPerformance` and `ErGwScale` SKU is only supported by an `ExpressRoute` gateway.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of the Virtual Network Gateway. Valid options are `Vpn` or `ExpressRoute`. Changing the type forces a new resource to be created.
  /// [virtualWanTrafficEnabled] Is remote vnet traffic that is used to configure this gateway to accept traffic from remote Virtual WAN networks enabled? Defaults to `false`.
  /// [vpnClientConfiguration] A `vpn_client_configuration` block which is documented below. In this block the Virtual Network Gateway can be configured to accept IPSec point-to-site connections.
  /// [vpnType] The routing type of the Virtual Network Gateway. Valid options are `RouteBased` or `PolicyBased`. Defaults to `RouteBased`. Changing this forces a new resource to be created.
  VirtualNetworkGatewayArgs({
    this.activeActive,
    this.bgpRouteTranslationForNatEnabled,
    this.bgpSettings,
    this.customRoute,
    this.defaultLocalNetworkGatewayId,
    this.dnsForwardingEnabled,
    this.edgeZone,
    this.enableBgp,
    this.generation,
    required this.ipConfigurations,
    this.ipSecReplayProtectionEnabled,
    this.location,
    this.name,
    this.policyGroups,
    this.privateIpAddressEnabled,
    this.remoteVnetTrafficEnabled,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
    required this.type,
    this.virtualWanTrafficEnabled,
    this.vpnClientConfiguration,
    this.vpnType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeActive': ?activeActive,
      'bgpRouteTranslationForNatEnabled': ?bgpRouteTranslationForNatEnabled,
      'bgpSettings': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewayBgpSettings, Map<String, dynamic>>(bgpSettings, (value) => value.toMap()),
      'customRoute': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewayCustomRoute, Map<String, dynamic>>(customRoute, (value) => value.toMap()),
      'defaultLocalNetworkGatewayId': ?defaultLocalNetworkGatewayId,
      'dnsForwardingEnabled': ?dnsForwardingEnabled,
      'edgeZone': ?edgeZone,
      'enableBgp': ?enableBgp,
      'generation': ?generation,
      'ipConfigurations': pulumi.Input.mapInputValue<List<VirtualNetworkGatewayIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipSecReplayProtectionEnabled': ?ipSecReplayProtectionEnabled,
      'location': ?location,
      'name': ?name,
      'policyGroups': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayPolicyGroup>, List<Map<String, dynamic>>>(policyGroups, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayPolicyGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateIpAddressEnabled': ?privateIpAddressEnabled,
      'remoteVnetTrafficEnabled': ?remoteVnetTrafficEnabled,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': ?tags,
      'type': type,
      'virtualWanTrafficEnabled': ?virtualWanTrafficEnabled,
      'vpnClientConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewayVpnClientConfiguration, Map<String, dynamic>>(vpnClientConfiguration, (value) => value.toMap()),
      'vpnType': ?vpnType,
    };
  }

  factory VirtualNetworkGatewayArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayArgs(
      activeActive: map['activeActive'] == null ? null : (map['activeActive'] as bool).input(),
      bgpRouteTranslationForNatEnabled: map['bgpRouteTranslationForNatEnabled'] == null ? null : (map['bgpRouteTranslationForNatEnabled'] as bool).input(),
      bgpSettings: map['bgpSettings'] == null ? null : (VirtualNetworkGatewayBgpSettings.fromMap((map['bgpSettings'] as Map).cast<String, dynamic>())).input(),
      customRoute: map['customRoute'] == null ? null : (VirtualNetworkGatewayCustomRoute.fromMap((map['customRoute'] as Map).cast<String, dynamic>())).input(),
      defaultLocalNetworkGatewayId: map['defaultLocalNetworkGatewayId'] == null ? null : (map['defaultLocalNetworkGatewayId'] as String).input(),
      dnsForwardingEnabled: map['dnsForwardingEnabled'] == null ? null : (map['dnsForwardingEnabled'] as bool).input(),
      edgeZone: map['edgeZone'] == null ? null : (map['edgeZone'] as String).input(),
      enableBgp: map['enableBgp'] == null ? null : (map['enableBgp'] as bool).input(),
      generation: map['generation'] == null ? null : (map['generation'] as String).input(),
      ipConfigurations: (pulumi.Input.decodeList<VirtualNetworkGatewayIpConfiguration>(map['ipConfigurations'], (value) => VirtualNetworkGatewayIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipSecReplayProtectionEnabled: map['ipSecReplayProtectionEnabled'] == null ? null : (map['ipSecReplayProtectionEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      policyGroups: map['policyGroups'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroup>(map['policyGroups'], (value) => VirtualNetworkGatewayPolicyGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateIpAddressEnabled: map['privateIpAddressEnabled'] == null ? null : (map['privateIpAddressEnabled'] as bool).input(),
      remoteVnetTrafficEnabled: map['remoteVnetTrafficEnabled'] == null ? null : (map['remoteVnetTrafficEnabled'] as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (map['sku'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      virtualWanTrafficEnabled: map['virtualWanTrafficEnabled'] == null ? null : (map['virtualWanTrafficEnabled'] as bool).input(),
      vpnClientConfiguration: map['vpnClientConfiguration'] == null ? null : (VirtualNetworkGatewayVpnClientConfiguration.fromMap((map['vpnClientConfiguration'] as Map).cast<String, dynamic>())).input(),
      vpnType: map['vpnType'] == null ? null : (map['vpnType'] as String).input(),
    );
  }
}

