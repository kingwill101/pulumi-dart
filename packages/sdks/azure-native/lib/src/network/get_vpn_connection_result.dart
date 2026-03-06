// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_policy_response.dart';
import 'routing_configuration_response.dart';
import 'sub_resource_response.dart';
import 'traffic_selector_policy_response.dart';
import 'vpn_site_link_connection_response.dart';

/// Result data returned by getVpnConnection.
class GetVpnConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
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

  /// Creates a new [GetVpnConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
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
  const GetVpnConnectionResult({
    required this.azureApiVersion,
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
      'azureApiVersion': azureApiVersion,
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
      'ipsecPolicies': ?(() { final guardedValue = ipsecPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<IpsecPolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'provisioningState': provisioningState,
      'remoteVpnSite': ?remoteVpnSite?.toMap(),
      'routingConfiguration': ?routingConfiguration?.toMap(),
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'trafficSelectorPolicies': ?(() { final guardedValue = trafficSelectorPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<TrafficSelectorPolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'useLocalAzureIpAddress': ?useLocalAzureIpAddress,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'vpnConnectionProtocolType': ?vpnConnectionProtocolType,
      'vpnLinkConnections': ?(() { final guardedValue = vpnLinkConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<VpnSiteLinkConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVpnConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetVpnConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectionBandwidth: (() { final guardedValue = map['connectionBandwidth']; if (guardedValue == null) return null; return guardedValue as int; })(),
      connectionStatus: map['connectionStatus'] as String,
      dpdTimeoutSeconds: (() { final guardedValue = map['dpdTimeoutSeconds']; if (guardedValue == null) return null; return guardedValue as int; })(),
      egressBytesTransferred: map['egressBytesTransferred'] as double,
      enableBgp: (() { final guardedValue = map['enableBgp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableInternetSecurity: (() { final guardedValue = map['enableInternetSecurity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableRateLimiting: (() { final guardedValue = map['enableRateLimiting']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingressBytesTransferred: map['ingressBytesTransferred'] as double,
      ipsecPolicies: (() { final guardedValue = map['ipsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpsecPolicyResponse>(guardedValue, (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      remoteVpnSite: (() { final guardedValue = map['remoteVpnSite']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      routingConfiguration: (() { final guardedValue = map['routingConfiguration']; if (guardedValue == null) return null; return RoutingConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      routingWeight: (() { final guardedValue = map['routingWeight']; if (guardedValue == null) return null; return guardedValue as int; })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trafficSelectorPolicies: (() { final guardedValue = map['trafficSelectorPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrafficSelectorPolicyResponse>(guardedValue, (value) => TrafficSelectorPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      useLocalAzureIpAddress: (() { final guardedValue = map['useLocalAzureIpAddress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      usePolicyBasedTrafficSelectors: (() { final guardedValue = map['usePolicyBasedTrafficSelectors']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      vpnConnectionProtocolType: (() { final guardedValue = map['vpnConnectionProtocolType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpnLinkConnections: (() { final guardedValue = map['vpnLinkConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnSiteLinkConnectionResponse>(guardedValue, (value) => VpnSiteLinkConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

