// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_custom_bgp_ip_address_ip_configuration_response.dart';
import 'ipsec_policy_response.dart';
import 'sub_resource_response.dart';

/// VpnSiteLinkConnection Resource.
class VpnSiteLinkConnectionResponse {
  /// Expected bandwidth in MBPS.
  final pulumi.Input<int>? connectionBandwidth;
  /// The connection status.
  final pulumi.Input<String> connectionStatus;
  /// Dead Peer Detection timeout in seconds for VpnLink connection.
  final pulumi.Input<int>? dpdTimeoutSeconds;
  /// Egress bytes transferred.
  final pulumi.Input<double> egressBytesTransferred;
  /// List of egress NatRules.
  final pulumi.Input<List<SubResourceResponse>>? egressNatRules;
  /// EnableBgp flag.
  final pulumi.Input<bool>? enableBgp;
  /// EnableBgp flag.
  final pulumi.Input<bool>? enableRateLimiting;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Ingress bytes transferred.
  final pulumi.Input<double> ingressBytesTransferred;
  /// List of ingress NatRules.
  final pulumi.Input<List<SubResourceResponse>>? ingressNatRules;
  /// The IPSec Policies to be considered by this connection.
  final pulumi.Input<List<IpsecPolicyResponse>>? ipsecPolicies;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the VPN site link connection resource.
  final pulumi.Input<String> provisioningState;
  /// Routing weight for vpn connection.
  final pulumi.Input<int>? routingWeight;
  /// SharedKey for the vpn connection.
  final pulumi.Input<String>? sharedKey;
  /// Resource type.
  final pulumi.Input<String> type;
  /// Use local azure ip to initiate connection.
  final pulumi.Input<bool>? useLocalAzureIpAddress;
  /// Enable policy-based traffic selectors.
  final pulumi.Input<bool>? usePolicyBasedTrafficSelectors;
  /// Connection protocol used for this connection.
  final pulumi.Input<String>? vpnConnectionProtocolType;
  /// vpnGatewayCustomBgpAddresses used by this connection.
  final pulumi.Input<List<GatewayCustomBgpIpAddressIpConfigurationResponse>>? vpnGatewayCustomBgpAddresses;
  /// Vpn link connection mode.
  final pulumi.Input<String>? vpnLinkConnectionMode;
  /// Id of the connected vpn site link.
  final pulumi.Input<SubResourceResponse>? vpnSiteLink;

  /// Creates a new [VpnSiteLinkConnectionResponse].
  /// [connectionBandwidth] Expected bandwidth in MBPS.
  /// [connectionStatus] The connection status.
  /// [dpdTimeoutSeconds] Dead Peer Detection timeout in seconds for VpnLink connection.
  /// [egressBytesTransferred] Egress bytes transferred.
  /// [egressNatRules] List of egress NatRules.
  /// [enableBgp] EnableBgp flag.
  /// [enableRateLimiting] EnableBgp flag.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ingressBytesTransferred] Ingress bytes transferred.
  /// [ingressNatRules] List of ingress NatRules.
  /// [ipsecPolicies] The IPSec Policies to be considered by this connection.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the VPN site link connection resource.
  /// [routingWeight] Routing weight for vpn connection.
  /// [sharedKey] SharedKey for the vpn connection.
  /// [type] Resource type.
  /// [useLocalAzureIpAddress] Use local azure ip to initiate connection.
  /// [usePolicyBasedTrafficSelectors] Enable policy-based traffic selectors.
  /// [vpnConnectionProtocolType] Connection protocol used for this connection.
  /// [vpnGatewayCustomBgpAddresses] vpnGatewayCustomBgpAddresses used by this connection.
  /// [vpnLinkConnectionMode] Vpn link connection mode.
  /// [vpnSiteLink] Id of the connected vpn site link.
  const VpnSiteLinkConnectionResponse({
    this.connectionBandwidth,
    required this.connectionStatus,
    this.dpdTimeoutSeconds,
    required this.egressBytesTransferred,
    this.egressNatRules,
    this.enableBgp,
    this.enableRateLimiting,
    required this.etag,
    this.id,
    required this.ingressBytesTransferred,
    this.ingressNatRules,
    this.ipsecPolicies,
    this.name,
    required this.provisioningState,
    this.routingWeight,
    this.sharedKey,
    required this.type,
    this.useLocalAzureIpAddress,
    this.usePolicyBasedTrafficSelectors,
    this.vpnConnectionProtocolType,
    this.vpnGatewayCustomBgpAddresses,
    this.vpnLinkConnectionMode,
    this.vpnSiteLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionBandwidth': ?connectionBandwidth,
      'connectionStatus': connectionStatus,
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'egressBytesTransferred': egressBytesTransferred,
      'egressNatRules': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(egressNatRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableBgp': ?enableBgp,
      'enableRateLimiting': ?enableRateLimiting,
      'etag': etag,
      'id': ?id,
      'ingressBytesTransferred': ingressBytesTransferred,
      'ingressNatRules': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(ingressNatRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<IpsecPolicyResponse>, List<Map<String, dynamic>>>(ipsecPolicies, (value) => pulumi.Input.encodeList<IpsecPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'provisioningState': provisioningState,
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'type': type,
      'useLocalAzureIpAddress': ?useLocalAzureIpAddress,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'vpnConnectionProtocolType': ?vpnConnectionProtocolType,
      'vpnGatewayCustomBgpAddresses': ?pulumi.Input.mapOptionalInputValue<List<GatewayCustomBgpIpAddressIpConfigurationResponse>, List<Map<String, dynamic>>>(vpnGatewayCustomBgpAddresses, (value) => pulumi.Input.encodeList<GatewayCustomBgpIpAddressIpConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnLinkConnectionMode': ?vpnLinkConnectionMode,
      'vpnSiteLink': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(vpnSiteLink, (value) => value.toMap()),
    };
  }

  factory VpnSiteLinkConnectionResponse.fromMap(Map<String, dynamic> map) {
    return VpnSiteLinkConnectionResponse(
      connectionBandwidth: (() { final guardedValue = map['connectionBandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      connectionStatus: pulumi.Input.fromValue(map['connectionStatus'] as String),
      dpdTimeoutSeconds: (() { final guardedValue = map['dpdTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      egressBytesTransferred: pulumi.Input.fromValue(map['egressBytesTransferred'] as double),
      egressNatRules: (() { final guardedValue = map['egressNatRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableBgp: (() { final guardedValue = map['enableBgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableRateLimiting: (() { final guardedValue = map['enableRateLimiting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressBytesTransferred: pulumi.Input.fromValue(map['ingressBytesTransferred'] as double),
      ingressNatRules: (() { final guardedValue = map['ingressNatRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipsecPolicies: (() { final guardedValue = map['ipsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpsecPolicyResponse>(guardedValue, (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      routingWeight: (() { final guardedValue = map['routingWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useLocalAzureIpAddress: (() { final guardedValue = map['useLocalAzureIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      usePolicyBasedTrafficSelectors: (() { final guardedValue = map['usePolicyBasedTrafficSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpnConnectionProtocolType: (() { final guardedValue = map['vpnConnectionProtocolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnGatewayCustomBgpAddresses: (() { final guardedValue = map['vpnGatewayCustomBgpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GatewayCustomBgpIpAddressIpConfigurationResponse>(guardedValue, (value) => GatewayCustomBgpIpAddressIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnLinkConnectionMode: (() { final guardedValue = map['vpnLinkConnectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnSiteLink: (() { final guardedValue = map['vpnSiteLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

