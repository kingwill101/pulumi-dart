// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_connection_custom_bgp_addresses.dart';
import 'virtual_network_gateway_connection_ipsec_policy.dart';
import 'virtual_network_gateway_connection_traffic_selector_policy.dart';

/// Input properties used for looking up and filtering VirtualNetworkGatewayConnection resources.
class VirtualNetworkGatewayConnectionState {
  /// The authorization key associated with the Express Route Circuit. This field is required only if the type is an ExpressRoute connection.
  final pulumi.Input<String>? authorizationKey;
  /// Connection mode to use. Possible values are `Default`, `InitiatorOnly` and `ResponderOnly`. Defaults to `Default`. Changing this value will force a resource to be created.
  final pulumi.Input<String>? connectionMode;
  /// The IKE protocol version to use. Possible values are `IKEv1` and `IKEv2`, values are `IKEv1` and `IKEv2`. Defaults to `IKEv2`. Changing this forces a new resource to be created.
  /// > **Note:** Only valid for `IPSec` connections on virtual network gateways with SKU `VpnGw1`, `VpnGw2`, `VpnGw3`, `VpnGw1AZ`, `VpnGw2AZ` or `VpnGw3AZ`.
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
  final pulumi.Input<String>? resourceGroupName;
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
  final pulumi.Input<String>? type;
  /// If `true`, policy-based traffic selectors are enabled for this connection. Enabling policy-based traffic selectors requires an `ipsec_policy` block. Defaults to `false`.
  final pulumi.Input<bool>? usePolicyBasedTrafficSelectors;
  /// The ID of the Virtual Network Gateway in which the connection will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualNetworkGatewayId;

  /// Creates a new [VirtualNetworkGatewayConnectionState].
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
  VirtualNetworkGatewayConnectionState({
    pulumi.Output<String>? authorizationKey,
    pulumi.Output<String>? connectionMode,
    pulumi.Output<String>? connectionProtocol,
    pulumi.Output<VirtualNetworkGatewayConnectionCustomBgpAddresses>? customBgpAddresses,
    pulumi.Output<int>? dpdTimeoutSeconds,
    pulumi.Output<List<String>>? egressNatRuleIds,
    pulumi.Output<bool>? enableBgp,
    pulumi.Output<String>? expressRouteCircuitId,
    pulumi.Output<bool>? expressRouteGatewayBypass,
    pulumi.Output<List<String>>? ingressNatRuleIds,
    pulumi.Output<VirtualNetworkGatewayConnectionIpsecPolicy>? ipsecPolicy,
    pulumi.Output<bool>? localAzureIpAddressEnabled,
    pulumi.Output<String>? localNetworkGatewayId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? peerVirtualNetworkGatewayId,
    pulumi.Output<bool>? privateLinkFastPathEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? routingWeight,
    pulumi.Output<String>? sharedKey,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<VirtualNetworkGatewayConnectionTrafficSelectorPolicy>? trafficSelectorPolicy,
    pulumi.Output<String>? type,
    pulumi.Output<bool>? usePolicyBasedTrafficSelectors,
    pulumi.Output<String>? virtualNetworkGatewayId,
  }) :
      authorizationKey = pulumi.Input.asOptionalInput<String>(authorizationKey),
      connectionMode = pulumi.Input.asOptionalInput<String>(connectionMode),
      connectionProtocol = pulumi.Input.asOptionalInput<String>(connectionProtocol),
      customBgpAddresses = pulumi.Input.asOptionalInput<VirtualNetworkGatewayConnectionCustomBgpAddresses>(customBgpAddresses),
      dpdTimeoutSeconds = pulumi.Input.asOptionalInput<int>(dpdTimeoutSeconds),
      egressNatRuleIds = pulumi.Input.asOptionalInput<List<String>>(egressNatRuleIds),
      enableBgp = pulumi.Input.asOptionalInput<bool>(enableBgp),
      expressRouteCircuitId = pulumi.Input.asOptionalInput<String>(expressRouteCircuitId),
      expressRouteGatewayBypass = pulumi.Input.asOptionalInput<bool>(expressRouteGatewayBypass),
      ingressNatRuleIds = pulumi.Input.asOptionalInput<List<String>>(ingressNatRuleIds),
      ipsecPolicy = pulumi.Input.asOptionalInput<VirtualNetworkGatewayConnectionIpsecPolicy>(ipsecPolicy),
      localAzureIpAddressEnabled = pulumi.Input.asOptionalInput<bool>(localAzureIpAddressEnabled),
      localNetworkGatewayId = pulumi.Input.asOptionalInput<String>(localNetworkGatewayId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      peerVirtualNetworkGatewayId = pulumi.Input.asOptionalInput<String>(peerVirtualNetworkGatewayId),
      privateLinkFastPathEnabled = pulumi.Input.asOptionalInput<bool>(privateLinkFastPathEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      routingWeight = pulumi.Input.asOptionalInput<int>(routingWeight),
      sharedKey = pulumi.Input.asOptionalInput<String>(sharedKey),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficSelectorPolicy = pulumi.Input.asOptionalInput<VirtualNetworkGatewayConnectionTrafficSelectorPolicy>(trafficSelectorPolicy),
      type = pulumi.Input.asOptionalInput<String>(type),
      usePolicyBasedTrafficSelectors = pulumi.Input.asOptionalInput<bool>(usePolicyBasedTrafficSelectors),
      virtualNetworkGatewayId = pulumi.Input.asOptionalInput<String>(virtualNetworkGatewayId);

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
      'resourceGroupName': ?resourceGroupName,
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'tags': ?tags,
      'trafficSelectorPolicy': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewayConnectionTrafficSelectorPolicy, Map<String, dynamic>>(trafficSelectorPolicy, (value) => value.toMap()),
      'type': ?type,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'virtualNetworkGatewayId': ?virtualNetworkGatewayId,
    };
  }

  factory VirtualNetworkGatewayConnectionState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayConnectionState(
      authorizationKey: map['authorizationKey'] == null ? null : pulumi.Output.create<String>(map['authorizationKey'] as String),
      connectionMode: map['connectionMode'] == null ? null : pulumi.Output.create<String>(map['connectionMode'] as String),
      connectionProtocol: map['connectionProtocol'] == null ? null : pulumi.Output.create<String>(map['connectionProtocol'] as String),
      customBgpAddresses: map['customBgpAddresses'] == null ? null : pulumi.Output.create<VirtualNetworkGatewayConnectionCustomBgpAddresses>(VirtualNetworkGatewayConnectionCustomBgpAddresses.fromMap((map['customBgpAddresses'] as Map).cast<String, dynamic>())),
      dpdTimeoutSeconds: map['dpdTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['dpdTimeoutSeconds'] as int),
      egressNatRuleIds: map['egressNatRuleIds'] == null ? null : pulumi.Output.create<List<String>>((map['egressNatRuleIds'] as List).cast<String>()),
      enableBgp: map['enableBgp'] == null ? null : pulumi.Output.create<bool>(map['enableBgp'] as bool),
      expressRouteCircuitId: map['expressRouteCircuitId'] == null ? null : pulumi.Output.create<String>(map['expressRouteCircuitId'] as String),
      expressRouteGatewayBypass: map['expressRouteGatewayBypass'] == null ? null : pulumi.Output.create<bool>(map['expressRouteGatewayBypass'] as bool),
      ingressNatRuleIds: map['ingressNatRuleIds'] == null ? null : pulumi.Output.create<List<String>>((map['ingressNatRuleIds'] as List).cast<String>()),
      ipsecPolicy: map['ipsecPolicy'] == null ? null : pulumi.Output.create<VirtualNetworkGatewayConnectionIpsecPolicy>(VirtualNetworkGatewayConnectionIpsecPolicy.fromMap((map['ipsecPolicy'] as Map).cast<String, dynamic>())),
      localAzureIpAddressEnabled: map['localAzureIpAddressEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAzureIpAddressEnabled'] as bool),
      localNetworkGatewayId: map['localNetworkGatewayId'] == null ? null : pulumi.Output.create<String>(map['localNetworkGatewayId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peerVirtualNetworkGatewayId: map['peerVirtualNetworkGatewayId'] == null ? null : pulumi.Output.create<String>(map['peerVirtualNetworkGatewayId'] as String),
      privateLinkFastPathEnabled: map['privateLinkFastPathEnabled'] == null ? null : pulumi.Output.create<bool>(map['privateLinkFastPathEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routingWeight: map['routingWeight'] == null ? null : pulumi.Output.create<int>(map['routingWeight'] as int),
      sharedKey: map['sharedKey'] == null ? null : pulumi.Output.create<String>(map['sharedKey'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trafficSelectorPolicy: map['trafficSelectorPolicy'] == null ? null : pulumi.Output.create<VirtualNetworkGatewayConnectionTrafficSelectorPolicy>(VirtualNetworkGatewayConnectionTrafficSelectorPolicy.fromMap((map['trafficSelectorPolicy'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      usePolicyBasedTrafficSelectors: map['usePolicyBasedTrafficSelectors'] == null ? null : pulumi.Output.create<bool>(map['usePolicyBasedTrafficSelectors'] as bool),
      virtualNetworkGatewayId: map['virtualNetworkGatewayId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkGatewayId'] as String),
    );
  }
}

