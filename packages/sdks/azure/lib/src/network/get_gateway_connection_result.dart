// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_connection_ipsec_policy.dart';
import 'get_gateway_connection_traffic_selector_policy.dart';

/// Result data returned by getGatewayConnection.
class GetGatewayConnectionResult {
  /// The authorization key associated with the
  /// Express Route Circuit. This field is present only if the type is an
  /// ExpressRoute connection.
  final String authorizationKey;
  final String connectionProtocol;

  /// The dead peer detection timeout of this connection in seconds.
  final int dpdTimeoutSeconds;
  final int egressBytesTransferred;

  /// If `true`, BGP (Border Gateway Protocol) is enabled
  /// for this connection.
  final bool enableBgp;

  /// The ID of the Express Route Circuit
  /// (i.e. when `type` is `ExpressRoute`).
  final String expressRouteCircuitId;

  /// If `true`, data packets will bypass ExpressRoute Gateway for data forwarding. This is only valid for ExpressRoute connections.
  final bool expressRouteGatewayBypass;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final int ingressBytesTransferred;

  /// (Optional) A `ipsec_policy` block which is documented below.
  /// Only a single policy can be defined for a connection. For details on
  /// custom policies refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-ipsecikepolicy-rm-powershell).
  final List<GetGatewayConnectionIpsecPolicy> ipsecPolicies;

  /// Use private local Azure IP for the connection.
  final bool localAzureIpAddressEnabled;

  /// The ID of the local network gateway
  /// when a Site-to-Site connection (i.e. when `type` is `IPsec`).
  final String localNetworkGatewayId;

  /// The location/region where the connection is
  /// located.
  final String location;
  final String name;

  /// The ID of the peer virtual
  /// network gateway when a VNet-to-VNet connection (i.e. when `type`
  /// is `Vnet2Vnet`).
  final String peerVirtualNetworkGatewayId;

  /// If `true`, data packets will bypass the Express Route gateway when accessing private-links.
  /// This is only valid for ExpressRoute connections, on the conditions described in [the relevant section in the Azure documentation](https://learn.microsoft.com/en-us/azure/expressroute/expressroute-howto-linkvnet-arm#fastpath-virtual-network-peering-user-defined-routes-udrs-and-private-link-support-for-expressroute-direct-connections)
  final bool privateLinkFastPathEnabled;
  final String resourceGroupName;
  final String resourceGuid;

  /// The routing weight.
  final int routingWeight;

  /// The shared IPSec key.
  final String sharedKey;

  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

  /// One or more `traffic_selector_policy` blocks which are documented below.
  /// A `traffic_selector_policy` allows to specify a traffic selector policy proposal to be used in a virtual network gateway connection.
  /// For details about traffic selectors refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-connect-multiple-policybased-rm-ps).
  final List<GetGatewayConnectionTrafficSelectorPolicy> trafficSelectorPolicies;

  /// The type of connection. Valid options are `IPsec`
  /// (Site-to-Site), `ExpressRoute` (ExpressRoute), and `Vnet2Vnet` (VNet-to-VNet).
  final String type;

  /// If `true`, policy-based traffic
  /// selectors are enabled for this connection. Enabling policy-based traffic
  /// selectors requires an `ipsec_policy` block.
  final bool usePolicyBasedTrafficSelectors;

  /// The ID of the Virtual Network Gateway
  /// in which the connection is created.
  final String virtualNetworkGatewayId;

  /// Creates a new [GetGatewayConnectionResult].
  /// [authorizationKey] The authorization key associated with the
  /// [connectionProtocol] Required.
  /// [dpdTimeoutSeconds] The dead peer detection timeout of this connection in seconds.
  /// [egressBytesTransferred] Required.
  /// [enableBgp] If `true`, BGP (Border Gateway Protocol) is enabled
  /// [expressRouteCircuitId] The ID of the Express Route Circuit
  /// [expressRouteGatewayBypass] If `true`, data packets will bypass ExpressRoute Gateway for data forwarding. This is only valid for ExpressRoute connections.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ingressBytesTransferred] Required.
  /// [ipsecPolicies] (Optional) A `ipsec_policy` block which is documented below.
  /// [localAzureIpAddressEnabled] Use private local Azure IP for the connection.
  /// [localNetworkGatewayId] The ID of the local network gateway
  /// [location] The location/region where the connection is
  /// [name] Required.
  /// [peerVirtualNetworkGatewayId] The ID of the peer virtual
  /// [privateLinkFastPathEnabled] If `true`, data packets will bypass the Express Route gateway when accessing private-links.
  /// [resourceGroupName] Required.
  /// [resourceGuid] Required.
  /// [routingWeight] The routing weight.
  /// [sharedKey] The shared IPSec key.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trafficSelectorPolicies] One or more `traffic_selector_policy` blocks which are documented below.
  /// [type] The type of connection. Valid options are `IPsec`
  /// [usePolicyBasedTrafficSelectors] If `true`, policy-based traffic
  /// [virtualNetworkGatewayId] The ID of the Virtual Network Gateway
  GetGatewayConnectionResult({
    required this.authorizationKey,
    required this.connectionProtocol,
    required this.dpdTimeoutSeconds,
    required this.egressBytesTransferred,
    required this.enableBgp,
    required this.expressRouteCircuitId,
    required this.expressRouteGatewayBypass,
    required this.id,
    required this.ingressBytesTransferred,
    required this.ipsecPolicies,
    required this.localAzureIpAddressEnabled,
    required this.localNetworkGatewayId,
    required this.location,
    required this.name,
    required this.peerVirtualNetworkGatewayId,
    required this.privateLinkFastPathEnabled,
    required this.resourceGroupName,
    required this.resourceGuid,
    required this.routingWeight,
    required this.sharedKey,
    required this.tags,
    required this.trafficSelectorPolicies,
    required this.type,
    required this.usePolicyBasedTrafficSelectors,
    required this.virtualNetworkGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': authorizationKey,
      'connectionProtocol': connectionProtocol,
      'dpdTimeoutSeconds': dpdTimeoutSeconds,
      'egressBytesTransferred': egressBytesTransferred,
      'enableBgp': enableBgp,
      'expressRouteCircuitId': expressRouteCircuitId,
      'expressRouteGatewayBypass': expressRouteGatewayBypass,
      'id': id,
      'ingressBytesTransferred': ingressBytesTransferred,
      'ipsecPolicies':
          pulumi.Input.encodeList<
            GetGatewayConnectionIpsecPolicy,
            Map<String, dynamic>
          >(ipsecPolicies, (value) => value.toMap()),
      'localAzureIpAddressEnabled': localAzureIpAddressEnabled,
      'localNetworkGatewayId': localNetworkGatewayId,
      'location': location,
      'name': name,
      'peerVirtualNetworkGatewayId': peerVirtualNetworkGatewayId,
      'privateLinkFastPathEnabled': privateLinkFastPathEnabled,
      'resourceGroupName': resourceGroupName,
      'resourceGuid': resourceGuid,
      'routingWeight': routingWeight,
      'sharedKey': sharedKey,
      'tags': tags,
      'trafficSelectorPolicies':
          pulumi.Input.encodeList<
            GetGatewayConnectionTrafficSelectorPolicy,
            Map<String, dynamic>
          >(trafficSelectorPolicies, (value) => value.toMap()),
      'type': type,
      'usePolicyBasedTrafficSelectors': usePolicyBasedTrafficSelectors,
      'virtualNetworkGatewayId': virtualNetworkGatewayId,
    };
  }

  factory GetGatewayConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayConnectionResult(
      authorizationKey: map['authorizationKey'] as String,
      connectionProtocol: map['connectionProtocol'] as String,
      dpdTimeoutSeconds: map['dpdTimeoutSeconds'] as int,
      egressBytesTransferred: map['egressBytesTransferred'] as int,
      enableBgp: map['enableBgp'] as bool,
      expressRouteCircuitId: map['expressRouteCircuitId'] as String,
      expressRouteGatewayBypass: map['expressRouteGatewayBypass'] as bool,
      id: map['id'] as String,
      ingressBytesTransferred: map['ingressBytesTransferred'] as int,
      ipsecPolicies: pulumi.Input.decodeList<GetGatewayConnectionIpsecPolicy>(
        map['ipsecPolicies']!,
        (value) => GetGatewayConnectionIpsecPolicy.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      localAzureIpAddressEnabled: map['localAzureIpAddressEnabled'] as bool,
      localNetworkGatewayId: map['localNetworkGatewayId'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      peerVirtualNetworkGatewayId: map['peerVirtualNetworkGatewayId'] as String,
      privateLinkFastPathEnabled: map['privateLinkFastPathEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceGuid: map['resourceGuid'] as String,
      routingWeight: map['routingWeight'] as int,
      sharedKey: map['sharedKey'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      trafficSelectorPolicies:
          pulumi.Input.decodeList<GetGatewayConnectionTrafficSelectorPolicy>(
            map['trafficSelectorPolicies']!,
            (value) => GetGatewayConnectionTrafficSelectorPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      type: map['type'] as String,
      usePolicyBasedTrafficSelectors:
          map['usePolicyBasedTrafficSelectors'] as bool,
      virtualNetworkGatewayId: map['virtualNetworkGatewayId'] as String,
    );
  }
}
