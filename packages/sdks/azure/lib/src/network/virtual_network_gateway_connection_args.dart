// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_connection_custom_bgp_addresses.dart';
import 'virtual_network_gateway_connection_ipsec_policy.dart';
import 'virtual_network_gateway_connection_traffic_selector_policy.dart';

/// {@template pulumi_network_virtual_network_gateway_connection_virtual_network_gateway_connection_args_doc}
/// The set of arguments for VirtualNetworkGatewayConnection.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_gateway_connection_virtual_network_gateway_connection_args_doc}
class VirtualNetworkGatewayConnectionArgs {
  /// The authorization key associated with the Express Route Circuit. This field is required only if the type is an ExpressRoute connection.
  final pulumi.Input<String>? authorizationKey;
  /// Connection mode to use. Possible values are `Default`, `InitiatorOnly` and `ResponderOnly`. Defaults to `Default`. Changing this value will force a resource to be created.
  final pulumi.Input<String>? connectionMode;
  /// The IKE protocol version to use. Possible values are `IKEv1` and `IKEv2`, values are `IKEv1` and `IKEv2`. Defaults to `IKEv2`. Changing this forces a new resource to be created.
  /// &gt; **Note:** Only valid for `IPSec` connections on virtual network gateways with SKU `VpnGw1`, `VpnGw2`, `VpnGw3`, `VpnGw1AZ`, `VpnGw2AZ` or `VpnGw3AZ`.
  final pulumi.Input<String>? connectionProtocol;
  /// A `custom_bgp_addresses` block which is documented below.
  /// The block can only be used on `IPSec` / `activeactive` connections,
  /// For details about see [the relevant section in the Azure documentation](https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-howto-aws-bgp).
  final pulumi.Input<VirtualNetworkGatewayConnectionCustomBgpAddresses>? customBgpAddresses;
  /// The dead peer detection timeout of this connection in seconds. Changing this forces a new resource to be created.
  final pulumi.Input<int>? dpdTimeoutSeconds;
  /// A list of the egress NAT Rule Ids.
  final pulumi.Input<List<String>>? egressNatRuleIds;
  /// If `true`, BGP (Border Gateway Protocol) is enabled for this connection. Defaults to `false`.
  final pulumi.Input<bool>? enableBgp;
  /// The ID of the Express Route Circuit when creating an ExpressRoute connection (i.e. when `type` is `ExpressRoute`). The Express Route Circuit can be in the same or in a different subscription. Changing this forces a new resource to be created.
  final pulumi.Input<String>? expressRouteCircuitId;
  /// If `true`, data packets will bypass ExpressRoute Gateway for data forwarding This is only valid for ExpressRoute connections.
  final pulumi.Input<bool>? expressRouteGatewayBypass;
  /// A list of the ingress NAT Rule Ids.
  final pulumi.Input<List<String>>? ingressNatRuleIds;
  /// A `ipsec_policy` block which is documented below.
  /// Only a single policy can be defined for a connection. For details on
  /// custom policies refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-ipsecikepolicy-rm-powershell).
  final pulumi.Input<VirtualNetworkGatewayConnectionIpsecPolicy>? ipsecPolicy;
  /// Use private local Azure IP for the connection. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? localAzureIpAddressEnabled;
  /// The ID of the local network gateway when creating Site-to-Site connection (i.e. when `type` is `IPsec`).
  final pulumi.Input<String>? localNetworkGatewayId;
  /// The location/region where the connection is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the connection. Changing the name forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the peer virtual network gateway when creating a VNet-to-VNet connection (i.e. when `type` is `Vnet2Vnet`). The peer Virtual Network Gateway can be in the same or in a different subscription. Changing this forces a new resource to be created.
  final pulumi.Input<String>? peerVirtualNetworkGatewayId;
  /// Bypass the Express Route gateway when accessing private-links. When enabled `express_route_gateway_bypass` must be set to `true`. Defaults to `false`.
  final pulumi.Input<bool>? privateLinkFastPathEnabled;
  /// The name of the resource group in which to create the connection Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The routing weight. Defaults to `10`.
  final pulumi.Input<int>? routingWeight;
  /// The shared IPSec key. A key could be provided if a Site-to-Site, VNet-to-VNet or ExpressRoute connection is created.
  final pulumi.Input<String>? sharedKey;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// One or more `traffic_selector_policy` blocks which are documented below.
  /// A `traffic_selector_policy` allows to specify a traffic selector policy proposal to be used in a virtual network gateway connection.
  /// For details about traffic selectors refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-connect-multiple-policybased-rm-ps).
  final pulumi.Input<VirtualNetworkGatewayConnectionTrafficSelectorPolicy>? trafficSelectorPolicy;
  /// The type of connection. Valid options are `IPsec` (Site-to-Site), `ExpressRoute` (ExpressRoute), and `Vnet2Vnet` (VNet-to-VNet). Each connection type requires different mandatory arguments (refer to the examples above). Changing this forces a new resource to be created.
  final pulumi.Input<String> type;
  /// If `true`, policy-based traffic selectors are enabled for this connection. Enabling policy-based traffic selectors requires an `ipsec_policy` block. Defaults to `false`.
  final pulumi.Input<bool>? usePolicyBasedTrafficSelectors;
  /// The ID of the Virtual Network Gateway in which the connection will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualNetworkGatewayId;

  /// Creates a new [VirtualNetworkGatewayConnectionArgs].
  /// [authorizationKey] The authorization key associated with the Express Route Circuit. This field is required only if the type is an ExpressRoute connection.
  /// [connectionMode] Connection mode to use. Possible values are `Default`, `InitiatorOnly` and `ResponderOnly`. Defaults to `Default`. Changing this value will force a resource to be created.
  /// [connectionProtocol] The IKE protocol version to use. Possible values are `IKEv1` and `IKEv2`, values are `IKEv1` and `IKEv2`. Defaults to `IKEv2`. Changing this forces a new resource to be created.
  /// [customBgpAddresses] A `custom_bgp_addresses` block which is documented below.
  /// [dpdTimeoutSeconds] The dead peer detection timeout of this connection in seconds. Changing this forces a new resource to be created.
  /// [egressNatRuleIds] A list of the egress NAT Rule Ids.
  /// [enableBgp] If `true`, BGP (Border Gateway Protocol) is enabled for this connection. Defaults to `false`.
  /// [expressRouteCircuitId] The ID of the Express Route Circuit when creating an ExpressRoute connection (i.e. when `type` is `ExpressRoute`). The Express Route Circuit can be in the same or in a different subscription. Changing this forces a new resource to be created.
  /// [expressRouteGatewayBypass] If `true`, data packets will bypass ExpressRoute Gateway for data forwarding This is only valid for ExpressRoute connections.
  /// [ingressNatRuleIds] A list of the ingress NAT Rule Ids.
  /// [ipsecPolicy] A `ipsec_policy` block which is documented below.
  /// [localAzureIpAddressEnabled] Use private local Azure IP for the connection. Changing this forces a new resource to be created.
  /// [localNetworkGatewayId] The ID of the local network gateway when creating Site-to-Site connection (i.e. when `type` is `IPsec`).
  /// [location] The location/region where the connection is located. Changing this forces a new resource to be created.
  /// [name] The name of the connection. Changing the name forces a new resource to be created.
  /// [peerVirtualNetworkGatewayId] The ID of the peer virtual network gateway when creating a VNet-to-VNet connection (i.e. when `type` is `Vnet2Vnet`). The peer Virtual Network Gateway can be in the same or in a different subscription. Changing this forces a new resource to be created.
  /// [privateLinkFastPathEnabled] Bypass the Express Route gateway when accessing private-links. When enabled `express_route_gateway_bypass` must be set to `true`. Defaults to `false`.
  /// [resourceGroupName] The name of the resource group in which to create the connection Changing this forces a new resource to be created.
  /// [routingWeight] The routing weight. Defaults to `10`.
  /// [sharedKey] The shared IPSec key. A key could be provided if a Site-to-Site, VNet-to-VNet or ExpressRoute connection is created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trafficSelectorPolicy] One or more `traffic_selector_policy` blocks which are documented below.
  /// [type] The type of connection. Valid options are `IPsec` (Site-to-Site), `ExpressRoute` (ExpressRoute), and `Vnet2Vnet` (VNet-to-VNet). Each connection type requires different mandatory arguments (refer to the examples above). Changing this forces a new resource to be created.
  /// [usePolicyBasedTrafficSelectors] If `true`, policy-based traffic selectors are enabled for this connection. Enabling policy-based traffic selectors requires an `ipsec_policy` block. Defaults to `false`.
  /// [virtualNetworkGatewayId] The ID of the Virtual Network Gateway in which the connection will be created. Changing this forces a new resource to be created.
  const VirtualNetworkGatewayConnectionArgs({
    this.authorizationKey,
    this.connectionMode,
    this.connectionProtocol,
    this.customBgpAddresses,
    this.dpdTimeoutSeconds,
    this.egressNatRuleIds,
    this.enableBgp,
    this.expressRouteCircuitId,
    this.expressRouteGatewayBypass,
    this.ingressNatRuleIds,
    this.ipsecPolicy,
    this.localAzureIpAddressEnabled,
    this.localNetworkGatewayId,
    this.location,
    this.name,
    this.peerVirtualNetworkGatewayId,
    this.privateLinkFastPathEnabled,
    required this.resourceGroupName,
    this.routingWeight,
    this.sharedKey,
    this.tags,
    this.trafficSelectorPolicy,
    required this.type,
    this.usePolicyBasedTrafficSelectors,
    required this.virtualNetworkGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'connectionMode': ?connectionMode,
      'connectionProtocol': ?connectionProtocol,
      'customBgpAddresses': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewayConnectionCustomBgpAddresses, Map<String, dynamic>>(customBgpAddresses, (value) => value.toMap()),
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'egressNatRuleIds': ?egressNatRuleIds,
      'enableBgp': ?enableBgp,
      'expressRouteCircuitId': ?expressRouteCircuitId,
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'ingressNatRuleIds': ?ingressNatRuleIds,
      'ipsecPolicy': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewayConnectionIpsecPolicy, Map<String, dynamic>>(ipsecPolicy, (value) => value.toMap()),
      'localAzureIpAddressEnabled': ?localAzureIpAddressEnabled,
      'localNetworkGatewayId': ?localNetworkGatewayId,
      'location': ?location,
      'name': ?name,
      'peerVirtualNetworkGatewayId': ?peerVirtualNetworkGatewayId,
      'privateLinkFastPathEnabled': ?privateLinkFastPathEnabled,
      'resourceGroupName': resourceGroupName,
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'tags': ?tags,
      'trafficSelectorPolicy': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewayConnectionTrafficSelectorPolicy, Map<String, dynamic>>(trafficSelectorPolicy, (value) => value.toMap()),
      'type': type,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'virtualNetworkGatewayId': virtualNetworkGatewayId,
    };
  }

  factory VirtualNetworkGatewayConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayConnectionArgs(
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionMode: (() { final guardedValue = map['connectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionProtocol: (() { final guardedValue = map['connectionProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customBgpAddresses: (() { final guardedValue = map['customBgpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkGatewayConnectionCustomBgpAddresses.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dpdTimeoutSeconds: (() { final guardedValue = map['dpdTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      egressNatRuleIds: (() { final guardedValue = map['egressNatRuleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableBgp: (() { final guardedValue = map['enableBgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expressRouteCircuitId: (() { final guardedValue = map['expressRouteCircuitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressRouteGatewayBypass: (() { final guardedValue = map['expressRouteGatewayBypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ingressNatRuleIds: (() { final guardedValue = map['ingressNatRuleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipsecPolicy: (() { final guardedValue = map['ipsecPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkGatewayConnectionIpsecPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localAzureIpAddressEnabled: (() { final guardedValue = map['localAzureIpAddressEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localNetworkGatewayId: (() { final guardedValue = map['localNetworkGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerVirtualNetworkGatewayId: (() { final guardedValue = map['peerVirtualNetworkGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkFastPathEnabled: (() { final guardedValue = map['privateLinkFastPathEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routingWeight: (() { final guardedValue = map['routingWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trafficSelectorPolicy: (() { final guardedValue = map['trafficSelectorPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkGatewayConnectionTrafficSelectorPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      usePolicyBasedTrafficSelectors: (() { final guardedValue = map['usePolicyBasedTrafficSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualNetworkGatewayId: pulumi.Input.fromValue(map['virtualNetworkGatewayId'] as String),
    );
  }
}

