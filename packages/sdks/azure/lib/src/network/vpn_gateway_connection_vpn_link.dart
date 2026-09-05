// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_connection_vpn_link_custom_bgp_address.dart';
import 'vpn_gateway_connection_vpn_link_ipsec_policy.dart';

class VpnGatewayConnectionVpnLink {
  /// The expected connection bandwidth in MBPS. Defaults to `10`.
  final pulumi.Input<int?>? bandwidthMbps;
  /// Should the BGP be enabled? Defaults to `false`. Changing this forces a new VPN Gateway Connection to be created.
  final pulumi.Input<bool?>? bgpEnabled;
  /// The connection mode of this VPN Link. Possible values are `Default`, `InitiatorOnly` and `ResponderOnly`. Defaults to `Default`.
  final pulumi.Input<String?>? connectionMode;
  /// One or more `customBgpAddress` blocks as defined below.
  final pulumi.Input<List<VpnGatewayConnectionVpnLinkCustomBgpAddress>?>? customBgpAddresses;
  /// The dead peer detection timeout of this connection in seconds. Possible values are between `9` and `3600`.
  final pulumi.Input<int?>? dpdTimeoutSeconds;
  /// A list of the egress NAT Rule Ids.
  final pulumi.Input<List<String>?>? egressNatRuleIds;
  /// A list of the ingress NAT Rule Ids.
  final pulumi.Input<List<String>?>? ingressNatRuleIds;
  /// One or more `ipsecPolicy` blocks as defined above.
  final pulumi.Input<List<VpnGatewayConnectionVpnLinkIpsecPolicy>?>? ipsecPolicies;
  /// Whether to use local Azure IP to initiate connection? Defaults to `false`.
  final pulumi.Input<bool?>? localAzureIpAddressEnabled;
  /// The name which should be used for this VPN Link Connection.
  final pulumi.Input<String> name;
  /// Whether to enable policy-based traffic selectors? Defaults to `false`.
  final pulumi.Input<bool?>? policyBasedTrafficSelectorEnabled;
  /// The protocol used for this VPN Link Connection. Possible values are `IKEv1` and `IKEv2`. Defaults to `IKEv2`.
  final pulumi.Input<String?>? protocol;
  /// Should the rate limit be enabled? Defaults to `false`.
  final pulumi.Input<bool?>? ratelimitEnabled;
  /// Routing weight for this VPN Link Connection. Defaults to `0`.
  final pulumi.Input<int?>? routeWeight;
  /// SharedKey for this VPN Link Connection.
  final pulumi.Input<String?>? sharedKey;
  /// The ID of the connected VPN Site Link. Changing this forces a new VPN Gateway Connection to be created.
  final pulumi.Input<String> vpnSiteLinkId;

  /// Creates a new [VpnGatewayConnectionVpnLink].
  /// [bandwidthMbps] The expected connection bandwidth in MBPS. Defaults to `10`.
  /// [bgpEnabled] Should the BGP be enabled? Defaults to `false`. Changing this forces a new VPN Gateway Connection to be created.
  /// [connectionMode] The connection mode of this VPN Link. Possible values are `Default`, `InitiatorOnly` and `ResponderOnly`. Defaults to `Default`.
  /// [customBgpAddresses] One or more `customBgpAddress` blocks as defined below.
  /// [dpdTimeoutSeconds] The dead peer detection timeout of this connection in seconds. Possible values are between `9` and `3600`.
  /// [egressNatRuleIds] A list of the egress NAT Rule Ids.
  /// [ingressNatRuleIds] A list of the ingress NAT Rule Ids.
  /// [ipsecPolicies] One or more `ipsecPolicy` blocks as defined above.
  /// [localAzureIpAddressEnabled] Whether to use local Azure IP to initiate connection? Defaults to `false`.
  /// [name] The name which should be used for this VPN Link Connection.
  /// [policyBasedTrafficSelectorEnabled] Whether to enable policy-based traffic selectors? Defaults to `false`.
  /// [protocol] The protocol used for this VPN Link Connection. Possible values are `IKEv1` and `IKEv2`. Defaults to `IKEv2`.
  /// [ratelimitEnabled] Should the rate limit be enabled? Defaults to `false`.
  /// [routeWeight] Routing weight for this VPN Link Connection. Defaults to `0`.
  /// [sharedKey] SharedKey for this VPN Link Connection.
  /// [vpnSiteLinkId] The ID of the connected VPN Site Link. Changing this forces a new VPN Gateway Connection to be created.
  const VpnGatewayConnectionVpnLink({
    this.bandwidthMbps,
    this.bgpEnabled,
    this.connectionMode,
    this.customBgpAddresses,
    this.dpdTimeoutSeconds,
    this.egressNatRuleIds,
    this.ingressNatRuleIds,
    this.ipsecPolicies,
    this.localAzureIpAddressEnabled,
    required this.name,
    this.policyBasedTrafficSelectorEnabled,
    this.protocol,
    this.ratelimitEnabled,
    this.routeWeight,
    this.sharedKey,
    required this.vpnSiteLinkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthMbps': ?bandwidthMbps,
      'bgpEnabled': ?bgpEnabled,
      'connectionMode': ?connectionMode,
      'customBgpAddresses': ?pulumi.Input.mapOptionalInputValue<List<VpnGatewayConnectionVpnLinkCustomBgpAddress>, List<Map<String, dynamic>>>(customBgpAddresses, (value) => pulumi.Input.encodeList<VpnGatewayConnectionVpnLinkCustomBgpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'egressNatRuleIds': ?egressNatRuleIds,
      'ingressNatRuleIds': ?ingressNatRuleIds,
      'ipsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<VpnGatewayConnectionVpnLinkIpsecPolicy>, List<Map<String, dynamic>>>(ipsecPolicies, (value) => pulumi.Input.encodeList<VpnGatewayConnectionVpnLinkIpsecPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localAzureIpAddressEnabled': ?localAzureIpAddressEnabled,
      'name': name,
      'policyBasedTrafficSelectorEnabled': ?policyBasedTrafficSelectorEnabled,
      'protocol': ?protocol,
      'ratelimitEnabled': ?ratelimitEnabled,
      'routeWeight': ?routeWeight,
      'sharedKey': ?sharedKey,
      'vpnSiteLinkId': vpnSiteLinkId,
    };
  }

  factory VpnGatewayConnectionVpnLink.fromMap(Map<String, dynamic> map) {
    return VpnGatewayConnectionVpnLink(
      bandwidthMbps: (() { final guardedValue = map['bandwidthMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      bgpEnabled: (() { final guardedValue = map['bgpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionMode: (() { final guardedValue = map['connectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customBgpAddresses: (() { final guardedValue = map['customBgpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnGatewayConnectionVpnLinkCustomBgpAddress>(guardedValue, (value) => VpnGatewayConnectionVpnLinkCustomBgpAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dpdTimeoutSeconds: (() { final guardedValue = map['dpdTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      egressNatRuleIds: (() { final guardedValue = map['egressNatRuleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ingressNatRuleIds: (() { final guardedValue = map['ingressNatRuleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipsecPolicies: (() { final guardedValue = map['ipsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnGatewayConnectionVpnLinkIpsecPolicy>(guardedValue, (value) => VpnGatewayConnectionVpnLinkIpsecPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localAzureIpAddressEnabled: (() { final guardedValue = map['localAzureIpAddressEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      policyBasedTrafficSelectorEnabled: (() { final guardedValue = map['policyBasedTrafficSelectorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ratelimitEnabled: (() { final guardedValue = map['ratelimitEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routeWeight: (() { final guardedValue = map['routeWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnSiteLinkId: pulumi.Input.fromValue(map['vpnSiteLinkId'] as String),
    );
  }
}
