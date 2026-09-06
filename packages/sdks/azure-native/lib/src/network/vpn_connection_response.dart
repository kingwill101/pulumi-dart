// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_policy_response.dart';
import 'routing_configuration_vpn_gateway_response.dart';
import 'sub_resource_response.dart';
import 'traffic_selector_policy_response.dart';
import 'vpn_site_link_connection_response.dart';

/// VpnConnection Resource.
class VpnConnectionResponse {
  /// Expected bandwidth in MBPS.
  final pulumi.Input<int?>? connectionBandwidth;
  /// The connection status.
  final pulumi.Input<String> connectionStatus;
  /// DPD timeout in seconds for vpn connection.
  final pulumi.Input<int?>? dpdTimeoutSeconds;
  /// Egress bytes transferred.
  final pulumi.Input<double> egressBytesTransferred;
  /// EnableBgp flag.
  final pulumi.Input<bool?>? enableBgp;
  /// Enable internet security.
  final pulumi.Input<bool?>? enableInternetSecurity;
  /// EnableBgp flag.
  final pulumi.Input<bool?>? enableRateLimiting;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Ingress bytes transferred.
  final pulumi.Input<double> ingressBytesTransferred;
  /// The IPSec Policies to be considered by this connection.
  final pulumi.Input<List<IpsecPolicyResponse>?>? ipsecPolicies;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// The provisioning state of the VPN connection resource.
  final pulumi.Input<String> provisioningState;
  /// Id of the connected vpn site.
  final pulumi.Input<SubResourceResponse?>? remoteVpnSite;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfigurationVpnGatewayResponse?>? routingConfiguration;
  /// Routing weight for vpn connection.
  final pulumi.Input<int?>? routingWeight;
  /// SharedKey for the vpn connection.
  final pulumi.Input<String?>? sharedKey;
  /// The Traffic Selector Policies to be considered by this connection.
  final pulumi.Input<List<TrafficSelectorPolicyResponse>?>? trafficSelectorPolicies;
  /// Use local azure ip to initiate connection.
  final pulumi.Input<bool?>? useLocalAzureIpAddress;
  /// Enable policy-based traffic selectors.
  final pulumi.Input<bool?>? usePolicyBasedTrafficSelectors;
  /// Connection protocol used for this connection.
  final pulumi.Input<String?>? vpnConnectionProtocolType;
  /// List of all vpn site link connections to the gateway.
  final pulumi.Input<List<VpnSiteLinkConnectionResponse>?>? vpnLinkConnections;

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
  const VpnConnectionResponse({
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
      'ipsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<IpsecPolicyResponse>, List<Map<String, dynamic>>>(ipsecPolicies, (value) => pulumi.Input.encodeList<IpsecPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'provisioningState': provisioningState,
      'remoteVpnSite': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(remoteVpnSite, (value) => value.toMap()),
      'routingConfiguration': ?pulumi.Input.mapOptionalInputValue<RoutingConfigurationVpnGatewayResponse, Map<String, dynamic>>(routingConfiguration, (value) => value.toMap()),
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'trafficSelectorPolicies': ?pulumi.Input.mapOptionalInputValue<List<TrafficSelectorPolicyResponse>, List<Map<String, dynamic>>>(trafficSelectorPolicies, (value) => pulumi.Input.encodeList<TrafficSelectorPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useLocalAzureIpAddress': ?useLocalAzureIpAddress,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'vpnConnectionProtocolType': ?vpnConnectionProtocolType,
      'vpnLinkConnections': ?pulumi.Input.mapOptionalInputValue<List<VpnSiteLinkConnectionResponse>, List<Map<String, dynamic>>>(vpnLinkConnections, (value) => pulumi.Input.encodeList<VpnSiteLinkConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpnConnectionResponse.fromMap(Map<String, dynamic> map) {
    return VpnConnectionResponse(
      connectionBandwidth: (() { final guardedValue = map['connectionBandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      connectionStatus: pulumi.Input.fromValue(map['connectionStatus'] as String),
      dpdTimeoutSeconds: (() { final guardedValue = map['dpdTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      egressBytesTransferred: pulumi.Input.fromValue((map['egressBytesTransferred'] as num).toDouble()),
      enableBgp: (() { final guardedValue = map['enableBgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableInternetSecurity: (() { final guardedValue = map['enableInternetSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableRateLimiting: (() { final guardedValue = map['enableRateLimiting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressBytesTransferred: pulumi.Input.fromValue((map['ingressBytesTransferred'] as num).toDouble()),
      ipsecPolicies: (() { final guardedValue = map['ipsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpsecPolicyResponse>(guardedValue, (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      remoteVpnSite: (() { final guardedValue = map['remoteVpnSite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingConfiguration: (() { final guardedValue = map['routingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingConfigurationVpnGatewayResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingWeight: (() { final guardedValue = map['routingWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficSelectorPolicies: (() { final guardedValue = map['trafficSelectorPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrafficSelectorPolicyResponse>(guardedValue, (value) => TrafficSelectorPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      useLocalAzureIpAddress: (() { final guardedValue = map['useLocalAzureIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      usePolicyBasedTrafficSelectors: (() { final guardedValue = map['usePolicyBasedTrafficSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpnConnectionProtocolType: (() { final guardedValue = map['vpnConnectionProtocolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnLinkConnections: (() { final guardedValue = map['vpnLinkConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnSiteLinkConnectionResponse>(guardedValue, (value) => VpnSiteLinkConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
