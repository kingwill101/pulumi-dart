// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_custom_bgp_ip_address_ip_configuration_response.dart';
import 'ipsec_policy_response.dart';
import 'sub_resource_response.dart';

/// VpnSiteLinkConnection Resource.
class VpnSiteLinkConnectionResponse {
  /// Expected bandwidth in MBPS.
  final int? connectionBandwidth;
  /// The connection status.
  final String connectionStatus;
  /// Dead Peer Detection timeout in seconds for VpnLink connection.
  final int? dpdTimeoutSeconds;
  /// Egress bytes transferred.
  final double egressBytesTransferred;
  /// List of egress NatRules.
  final List<SubResourceResponse>? egressNatRules;
  /// EnableBgp flag.
  final bool? enableBgp;
  /// EnableBgp flag.
  final bool? enableRateLimiting;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Ingress bytes transferred.
  final double ingressBytesTransferred;
  /// List of ingress NatRules.
  final List<SubResourceResponse>? ingressNatRules;
  /// The IPSec Policies to be considered by this connection.
  final List<IpsecPolicyResponse>? ipsecPolicies;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the VPN site link connection resource.
  final String provisioningState;
  /// Routing weight for vpn connection.
  final int? routingWeight;
  /// SharedKey for the vpn connection.
  final String? sharedKey;
  /// Resource type.
  final String type;
  /// Use local azure ip to initiate connection.
  final bool? useLocalAzureIpAddress;
  /// Enable policy-based traffic selectors.
  final bool? usePolicyBasedTrafficSelectors;
  /// Connection protocol used for this connection.
  final String? vpnConnectionProtocolType;
  /// vpnGatewayCustomBgpAddresses used by this connection.
  final List<GatewayCustomBgpIpAddressIpConfigurationResponse>? vpnGatewayCustomBgpAddresses;
  /// Vpn link connection mode.
  final String? vpnLinkConnectionMode;
  /// Id of the connected vpn site link.
  final SubResourceResponse? vpnSiteLink;

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
  VpnSiteLinkConnectionResponse({
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
      'egressNatRules': ?egressNatRules == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(egressNatRules!, (value) => value.toMap()),
      'enableBgp': ?enableBgp,
      'enableRateLimiting': ?enableRateLimiting,
      'etag': etag,
      'id': ?id,
      'ingressBytesTransferred': ingressBytesTransferred,
      'ingressNatRules': ?ingressNatRules == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(ingressNatRules!, (value) => value.toMap()),
      'ipsecPolicies': ?ipsecPolicies == null ? null : pulumi.Input.encodeList<IpsecPolicyResponse, Map<String, dynamic>>(ipsecPolicies!, (value) => value.toMap()),
      'name': ?name,
      'provisioningState': provisioningState,
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'type': type,
      'useLocalAzureIpAddress': ?useLocalAzureIpAddress,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'vpnConnectionProtocolType': ?vpnConnectionProtocolType,
      'vpnGatewayCustomBgpAddresses': ?vpnGatewayCustomBgpAddresses == null ? null : pulumi.Input.encodeList<GatewayCustomBgpIpAddressIpConfigurationResponse, Map<String, dynamic>>(vpnGatewayCustomBgpAddresses!, (value) => value.toMap()),
      'vpnLinkConnectionMode': ?vpnLinkConnectionMode,
      'vpnSiteLink': ?vpnSiteLink == null ? null : vpnSiteLink!.toMap(),
    };
  }

  factory VpnSiteLinkConnectionResponse.fromMap(Map<String, dynamic> map) {
    return VpnSiteLinkConnectionResponse(
      connectionBandwidth: map['connectionBandwidth'] == null ? null : map['connectionBandwidth'] as int,
      connectionStatus: map['connectionStatus'] as String,
      dpdTimeoutSeconds: map['dpdTimeoutSeconds'] == null ? null : map['dpdTimeoutSeconds'] as int,
      egressBytesTransferred: map['egressBytesTransferred'] as double,
      egressNatRules: map['egressNatRules'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['egressNatRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      enableBgp: map['enableBgp'] == null ? null : map['enableBgp'] as bool,
      enableRateLimiting: map['enableRateLimiting'] == null ? null : map['enableRateLimiting'] as bool,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ingressBytesTransferred: map['ingressBytesTransferred'] as double,
      ingressNatRules: map['ingressNatRules'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['ingressNatRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipsecPolicies: map['ipsecPolicies'] == null ? null : pulumi.Input.decodeList<IpsecPolicyResponse>(map['ipsecPolicies'], (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      routingWeight: map['routingWeight'] == null ? null : map['routingWeight'] as int,
      sharedKey: map['sharedKey'] == null ? null : map['sharedKey'] as String,
      type: map['type'] as String,
      useLocalAzureIpAddress: map['useLocalAzureIpAddress'] == null ? null : map['useLocalAzureIpAddress'] as bool,
      usePolicyBasedTrafficSelectors: map['usePolicyBasedTrafficSelectors'] == null ? null : map['usePolicyBasedTrafficSelectors'] as bool,
      vpnConnectionProtocolType: map['vpnConnectionProtocolType'] == null ? null : map['vpnConnectionProtocolType'] as String,
      vpnGatewayCustomBgpAddresses: map['vpnGatewayCustomBgpAddresses'] == null ? null : pulumi.Input.decodeList<GatewayCustomBgpIpAddressIpConfigurationResponse>(map['vpnGatewayCustomBgpAddresses'], (value) => GatewayCustomBgpIpAddressIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      vpnLinkConnectionMode: map['vpnLinkConnectionMode'] == null ? null : map['vpnLinkConnectionMode'] as String,
      vpnSiteLink: map['vpnSiteLink'] == null ? null : SubResourceResponse.fromMap((map['vpnSiteLink'] as Map).cast<String, dynamic>()),
    );
  }
}

