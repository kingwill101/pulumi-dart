// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_connection_ipsec_policy.dart';
import 'get_gateway_connection_traffic_selector_policy.dart';

/// Result data returned by getGatewayConnection.
class GetGatewayConnectionResult {
  /// The authorization key associated with the
  /// Express Route Circuit. This field is present only if the type is an
  /// ExpressRoute connection.
  final String? authorizationKey;
  final String? connectionProtocol;
  /// The dead peer detection timeout of this connection in seconds.
  final int? dpdTimeoutSeconds;
  final int? egressBytesTransferred;
  /// If `true`, BGP (Border Gateway Protocol) is enabled
  /// for this connection.
  final bool? enableBgp;
  /// The ID of the Express Route Circuit
  /// (i.e. when `type` is `ExpressRoute`).
  final String? expressRouteCircuitId;
  /// If `true`, data packets will bypass ExpressRoute Gateway for data forwarding. This is only valid for ExpressRoute connections.
  final bool? expressRouteGatewayBypass;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final int? ingressBytesTransferred;
  /// (Optional) A `ipsecPolicy` block which is documented below.
  /// Only a single policy can be defined for a connection. For details on
  /// custom policies refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-ipsecikepolicy-rm-powershell).
  final List<GetGatewayConnectionIpsecPolicy>? ipsecPolicies;
  /// Use private local Azure IP for the connection.
  final bool? localAzureIpAddressEnabled;
  /// The ID of the local network gateway
  /// when a Site-to-Site connection (i.e. when `type` is `IPsec`).
  final String? localNetworkGatewayId;
  /// The location/region where the connection is
  /// located.
  final String? location;
  final String? name;
  /// The ID of the peer virtual
  /// network gateway when a VNet-to-VNet connection (i.e. when `type`
  /// is `Vnet2Vnet`).
  final String? peerVirtualNetworkGatewayId;
  /// If `true`, data packets will bypass the Express Route gateway when accessing private-links.
  /// This is only valid for ExpressRoute connections, on the conditions described in [the relevant section in the Azure documentation](https://learn.microsoft.com/en-us/azure/expressroute/expressroute-howto-linkvnet-arm#fastpath-virtual-network-peering-user-defined-routes-udrs-and-private-link-support-for-expressroute-direct-connections)
  final bool? privateLinkFastPathEnabled;
  final String? resourceGroupName;
  final String? resourceGuid;
  /// The routing weight.
  final int? routingWeight;
  /// The shared IPSec key.
  final String? sharedKey;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// One or more `trafficSelectorPolicy` blocks which are documented below.
  /// A `trafficSelectorPolicy` allows to specify a traffic selector policy proposal to be used in a virtual network gateway connection.
  /// For details about traffic selectors refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-connect-multiple-policybased-rm-ps).
  final List<GetGatewayConnectionTrafficSelectorPolicy>? trafficSelectorPolicies;
  /// The type of connection. Valid options are `IPsec`
  /// (Site-to-Site), `ExpressRoute` (ExpressRoute), and `Vnet2Vnet` (VNet-to-VNet).
  final String? type;
  /// If `true`, policy-based traffic
  /// selectors are enabled for this connection. Enabling policy-based traffic
  /// selectors requires an `ipsecPolicy` block.
  final bool? usePolicyBasedTrafficSelectors;
  /// The ID of the Virtual Network Gateway
  /// in which the connection is created.
  final String? virtualNetworkGatewayId;

  /// Creates a new [GetGatewayConnectionResult].
  /// [authorizationKey] The authorization key associated with the
  /// [connectionProtocol] Optional.
  /// [dpdTimeoutSeconds] The dead peer detection timeout of this connection in seconds.
  /// [egressBytesTransferred] Optional.
  /// [enableBgp] If `true`, BGP (Border Gateway Protocol) is enabled
  /// [expressRouteCircuitId] The ID of the Express Route Circuit
  /// [expressRouteGatewayBypass] If `true`, data packets will bypass ExpressRoute Gateway for data forwarding. This is only valid for ExpressRoute connections.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ingressBytesTransferred] Optional.
  /// [ipsecPolicies] (Optional) A `ipsecPolicy` block which is documented below.
  /// [localAzureIpAddressEnabled] Use private local Azure IP for the connection.
  /// [localNetworkGatewayId] The ID of the local network gateway
  /// [location] The location/region where the connection is
  /// [name] Optional.
  /// [peerVirtualNetworkGatewayId] The ID of the peer virtual
  /// [privateLinkFastPathEnabled] If `true`, data packets will bypass the Express Route gateway when accessing private-links.
  /// [resourceGroupName] Optional.
  /// [resourceGuid] Optional.
  /// [routingWeight] The routing weight.
  /// [sharedKey] The shared IPSec key.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trafficSelectorPolicies] One or more `trafficSelectorPolicy` blocks which are documented below.
  /// [type] The type of connection. Valid options are `IPsec`
  /// [usePolicyBasedTrafficSelectors] If `true`, policy-based traffic
  /// [virtualNetworkGatewayId] The ID of the Virtual Network Gateway
  const GetGatewayConnectionResult({
    this.authorizationKey,
    this.connectionProtocol,
    this.dpdTimeoutSeconds,
    this.egressBytesTransferred,
    this.enableBgp,
    this.expressRouteCircuitId,
    this.expressRouteGatewayBypass,
    this.id,
    this.ingressBytesTransferred,
    this.ipsecPolicies,
    this.localAzureIpAddressEnabled,
    this.localNetworkGatewayId,
    this.location,
    this.name,
    this.peerVirtualNetworkGatewayId,
    this.privateLinkFastPathEnabled,
    this.resourceGroupName,
    this.resourceGuid,
    this.routingWeight,
    this.sharedKey,
    this.tags,
    this.trafficSelectorPolicies,
    this.type,
    this.usePolicyBasedTrafficSelectors,
    this.virtualNetworkGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'connectionProtocol': ?connectionProtocol,
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'egressBytesTransferred': ?egressBytesTransferred,
      'enableBgp': ?enableBgp,
      'expressRouteCircuitId': ?expressRouteCircuitId,
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'id': ?id,
      'ingressBytesTransferred': ?ingressBytesTransferred,
      'ipsecPolicies': ?(() { final guardedValue = ipsecPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGatewayConnectionIpsecPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'localAzureIpAddressEnabled': ?localAzureIpAddressEnabled,
      'localNetworkGatewayId': ?localNetworkGatewayId,
      'location': ?location,
      'name': ?name,
      'peerVirtualNetworkGatewayId': ?peerVirtualNetworkGatewayId,
      'privateLinkFastPathEnabled': ?privateLinkFastPathEnabled,
      'resourceGroupName': ?resourceGroupName,
      'resourceGuid': ?resourceGuid,
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'tags': ?tags,
      'trafficSelectorPolicies': ?(() { final guardedValue = trafficSelectorPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGatewayConnectionTrafficSelectorPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'virtualNetworkGatewayId': ?virtualNetworkGatewayId,
    };
  }

  factory GetGatewayConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayConnectionResult(
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionProtocol: (() { final guardedValue = map['connectionProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dpdTimeoutSeconds: (() { final guardedValue = map['dpdTimeoutSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      egressBytesTransferred: (() { final guardedValue = map['egressBytesTransferred']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      enableBgp: (() { final guardedValue = map['enableBgp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expressRouteCircuitId: (() { final guardedValue = map['expressRouteCircuitId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expressRouteGatewayBypass: (() { final guardedValue = map['expressRouteGatewayBypass']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingressBytesTransferred: (() { final guardedValue = map['ingressBytesTransferred']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      ipsecPolicies: (() { final guardedValue = map['ipsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGatewayConnectionIpsecPolicy>(guardedValue, (value) => GetGatewayConnectionIpsecPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      localAzureIpAddressEnabled: (() { final guardedValue = map['localAzureIpAddressEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      localNetworkGatewayId: (() { final guardedValue = map['localNetworkGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerVirtualNetworkGatewayId: (() { final guardedValue = map['peerVirtualNetworkGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkFastPathEnabled: (() { final guardedValue = map['privateLinkFastPathEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routingWeight: (() { final guardedValue = map['routingWeight']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      trafficSelectorPolicies: (() { final guardedValue = map['trafficSelectorPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGatewayConnectionTrafficSelectorPolicy>(guardedValue, (value) => GetGatewayConnectionTrafficSelectorPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      usePolicyBasedTrafficSelectors: (() { final guardedValue = map['usePolicyBasedTrafficSelectors']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      virtualNetworkGatewayId: (() { final guardedValue = map['virtualNetworkGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
