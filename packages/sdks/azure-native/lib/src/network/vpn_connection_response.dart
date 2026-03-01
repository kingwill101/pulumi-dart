// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_policy_response.dart';
import 'routing_configuration_response.dart';
import 'sub_resource_response.dart';
import 'traffic_selector_policy_response.dart';
import 'vpn_site_link_connection_response.dart';

/// VpnConnection Resource.
class VpnConnectionResponse {
  /// Expected bandwidth in MBPS.
  final int? connectionBandwidth;
  /// The connection status.
  final String connectionStatus;
  /// DPD timeout in seconds for vpn connection.
  final int? dpdTimeoutSeconds;
  /// Egress bytes transferred.
  final double egressBytesTransferred;
  /// EnableBgp flag.
  final bool? enableBgp;
  /// Enable internet security.
  final bool? enableInternetSecurity;
  /// EnableBgp flag.
  final bool? enableRateLimiting;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Ingress bytes transferred.
  final double ingressBytesTransferred;
  /// The IPSec Policies to be considered by this connection.
  final List<IpsecPolicyResponse>? ipsecPolicies;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the VPN connection resource.
  final String provisioningState;
  /// Id of the connected vpn site.
  final SubResourceResponse? remoteVpnSite;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final RoutingConfigurationResponse? routingConfiguration;
  /// Routing weight for vpn connection.
  final int? routingWeight;
  /// SharedKey for the vpn connection.
  final String? sharedKey;
  /// The Traffic Selector Policies to be considered by this connection.
  final List<TrafficSelectorPolicyResponse>? trafficSelectorPolicies;
  /// Use local azure ip to initiate connection.
  final bool? useLocalAzureIpAddress;
  /// Enable policy-based traffic selectors.
  final bool? usePolicyBasedTrafficSelectors;
  /// Connection protocol used for this connection.
  final String? vpnConnectionProtocolType;
  /// List of all vpn site link connections to the gateway.
  final List<VpnSiteLinkConnectionResponse>? vpnLinkConnections;

  /// Creates a new [VpnConnectionResponse].
  /// [connectionBandwidth] Expected bandwidth in MBPS.
  /// [connectionStatus] The connection status.
  /// [dpdTimeoutSeconds] DPD timeout in seconds for vpn connection.
  /// [egressBytesTransferred] Egress bytes transferred.
  /// [enableBgp] EnableBgp flag.
  /// [enableInternetSecurity] Enable internet security.
  /// [enableRateLimiting] EnableBgp flag.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ingressBytesTransferred] Ingress bytes transferred.
  /// [ipsecPolicies] The IPSec Policies to be considered by this connection.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the VPN connection resource.
  /// [remoteVpnSite] Id of the connected vpn site.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [routingWeight] Routing weight for vpn connection.
  /// [sharedKey] SharedKey for the vpn connection.
  /// [trafficSelectorPolicies] The Traffic Selector Policies to be considered by this connection.
  /// [useLocalAzureIpAddress] Use local azure ip to initiate connection.
  /// [usePolicyBasedTrafficSelectors] Enable policy-based traffic selectors.
  /// [vpnConnectionProtocolType] Connection protocol used for this connection.
  /// [vpnLinkConnections] List of all vpn site link connections to the gateway.
  VpnConnectionResponse({
    this.connectionBandwidth,
    required this.connectionStatus,
    this.dpdTimeoutSeconds,
    required this.egressBytesTransferred,
    this.enableBgp,
    this.enableInternetSecurity,
    this.enableRateLimiting,
    required this.etag,
    this.id,
    required this.ingressBytesTransferred,
    this.ipsecPolicies,
    this.name,
    required this.provisioningState,
    this.remoteVpnSite,
    this.routingConfiguration,
    this.routingWeight,
    this.sharedKey,
    this.trafficSelectorPolicies,
    this.useLocalAzureIpAddress,
    this.usePolicyBasedTrafficSelectors,
    this.vpnConnectionProtocolType,
    this.vpnLinkConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionBandwidth': ?connectionBandwidth,
      'connectionStatus': connectionStatus,
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'egressBytesTransferred': egressBytesTransferred,
      'enableBgp': ?enableBgp,
      'enableInternetSecurity': ?enableInternetSecurity,
      'enableRateLimiting': ?enableRateLimiting,
      'etag': etag,
      'id': ?id,
      'ingressBytesTransferred': ingressBytesTransferred,
      'ipsecPolicies': ?ipsecPolicies == null ? null : pulumi.Input.encodeList<IpsecPolicyResponse, Map<String, dynamic>>(ipsecPolicies!, (value) => value.toMap()),
      'name': ?name,
      'provisioningState': provisioningState,
      'remoteVpnSite': ?remoteVpnSite == null ? null : remoteVpnSite!.toMap(),
      'routingConfiguration': ?routingConfiguration == null ? null : routingConfiguration!.toMap(),
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'trafficSelectorPolicies': ?trafficSelectorPolicies == null ? null : pulumi.Input.encodeList<TrafficSelectorPolicyResponse, Map<String, dynamic>>(trafficSelectorPolicies!, (value) => value.toMap()),
      'useLocalAzureIpAddress': ?useLocalAzureIpAddress,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'vpnConnectionProtocolType': ?vpnConnectionProtocolType,
      'vpnLinkConnections': ?vpnLinkConnections == null ? null : pulumi.Input.encodeList<VpnSiteLinkConnectionResponse, Map<String, dynamic>>(vpnLinkConnections!, (value) => value.toMap()),
    };
  }

  factory VpnConnectionResponse.fromMap(Map<String, dynamic> map) {
    return VpnConnectionResponse(
      connectionBandwidth: map['connectionBandwidth'] == null ? null : map['connectionBandwidth'] as int,
      connectionStatus: map['connectionStatus'] as String,
      dpdTimeoutSeconds: map['dpdTimeoutSeconds'] == null ? null : map['dpdTimeoutSeconds'] as int,
      egressBytesTransferred: map['egressBytesTransferred'] as double,
      enableBgp: map['enableBgp'] == null ? null : map['enableBgp'] as bool,
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : map['enableInternetSecurity'] as bool,
      enableRateLimiting: map['enableRateLimiting'] == null ? null : map['enableRateLimiting'] as bool,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ingressBytesTransferred: map['ingressBytesTransferred'] as double,
      ipsecPolicies: map['ipsecPolicies'] == null ? null : pulumi.Input.decodeList<IpsecPolicyResponse>(map['ipsecPolicies'], (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      remoteVpnSite: map['remoteVpnSite'] == null ? null : SubResourceResponse.fromMap((map['remoteVpnSite'] as Map).cast<String, dynamic>()),
      routingConfiguration: map['routingConfiguration'] == null ? null : RoutingConfigurationResponse.fromMap((map['routingConfiguration'] as Map).cast<String, dynamic>()),
      routingWeight: map['routingWeight'] == null ? null : map['routingWeight'] as int,
      sharedKey: map['sharedKey'] == null ? null : map['sharedKey'] as String,
      trafficSelectorPolicies: map['trafficSelectorPolicies'] == null ? null : pulumi.Input.decodeList<TrafficSelectorPolicyResponse>(map['trafficSelectorPolicies'], (value) => TrafficSelectorPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      useLocalAzureIpAddress: map['useLocalAzureIpAddress'] == null ? null : map['useLocalAzureIpAddress'] as bool,
      usePolicyBasedTrafficSelectors: map['usePolicyBasedTrafficSelectors'] == null ? null : map['usePolicyBasedTrafficSelectors'] as bool,
      vpnConnectionProtocolType: map['vpnConnectionProtocolType'] == null ? null : map['vpnConnectionProtocolType'] as String,
      vpnLinkConnections: map['vpnLinkConnections'] == null ? null : pulumi.Input.decodeList<VpnSiteLinkConnectionResponse>(map['vpnLinkConnections'], (value) => VpnSiteLinkConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

