// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_custom_bgp_ip_address_ip_configuration_response.dart';
import 'ipsec_policy_response.dart';
import 'local_network_gateway_response.dart';
import 'sub_resource_response.dart';
import 'traffic_selector_policy_response.dart';
import 'tunnel_connection_health_response.dart';
import 'virtual_network_gateway_response.dart';

/// Result data returned by getVirtualNetworkGatewayConnection.
class GetVirtualNetworkGatewayConnectionResult {
  /// The authorizationKey.
  final String? authorizationKey;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The connection mode for this connection.
  final String? connectionMode;
  /// Connection protocol used for this connection.
  final String? connectionProtocol;
  /// Virtual Network Gateway connection status.
  final String connectionStatus;
  /// Gateway connection type.
  final String connectionType;
  /// The dead peer detection timeout of this connection in seconds.
  final int? dpdTimeoutSeconds;
  /// The egress bytes transferred in this connection.
  final double egressBytesTransferred;
  /// List of egress NatRules.
  final List<SubResourceResponse>? egressNatRules;
  /// EnableBgp flag.
  final bool? enableBgp;
  /// Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  final bool? enablePrivateLinkFastPath;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Bypass ExpressRoute Gateway for data forwarding.
  final bool? expressRouteGatewayBypass;
  /// GatewayCustomBgpIpAddresses to be used for virtual network gateway Connection.
  final List<GatewayCustomBgpIpAddressIpConfigurationResponse>? gatewayCustomBgpIpAddresses;
  /// Resource ID.
  final String? id;
  /// The ingress bytes transferred in this connection.
  final double ingressBytesTransferred;
  /// List of ingress NatRules.
  final List<SubResourceResponse>? ingressNatRules;
  /// The IPSec Policies to be considered by this connection.
  final List<IpsecPolicyResponse>? ipsecPolicies;
  /// The reference to local network gateway resource.
  final LocalNetworkGatewayResponse? localNetworkGateway2;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The reference to peerings resource.
  final SubResourceResponse? peer;
  /// The provisioning state of the virtual network gateway connection resource.
  final String provisioningState;
  /// The resource GUID property of the virtual network gateway connection resource.
  final String resourceGuid;
  /// The routing weight.
  final int? routingWeight;
  /// The IPSec shared key.
  final String? sharedKey;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The Traffic Selector Policies to be considered by this connection.
  final List<TrafficSelectorPolicyResponse>? trafficSelectorPolicies;
  /// Collection of all tunnels' connection health status.
  final List<TunnelConnectionHealthResponse> tunnelConnectionStatus;
  /// Resource type.
  final String type;
  /// Use private local Azure IP for the connection.
  final bool? useLocalAzureIpAddress;
  /// Enable policy-based traffic selectors.
  final bool? usePolicyBasedTrafficSelectors;
  /// The reference to virtual network gateway resource.
  final VirtualNetworkGatewayResponse virtualNetworkGateway1;
  /// The reference to virtual network gateway resource.
  final VirtualNetworkGatewayResponse? virtualNetworkGateway2;

  /// Creates a new [GetVirtualNetworkGatewayConnectionResult].
  /// [authorizationKey] The authorizationKey.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionMode] The connection mode for this connection.
  /// [connectionProtocol] Connection protocol used for this connection.
  /// [connectionStatus] Virtual Network Gateway connection status.
  /// [connectionType] Gateway connection type.
  /// [dpdTimeoutSeconds] The dead peer detection timeout of this connection in seconds.
  /// [egressBytesTransferred] The egress bytes transferred in this connection.
  /// [egressNatRules] List of egress NatRules.
  /// [enableBgp] EnableBgp flag.
  /// [enablePrivateLinkFastPath] Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [expressRouteGatewayBypass] Bypass ExpressRoute Gateway for data forwarding.
  /// [gatewayCustomBgpIpAddresses] GatewayCustomBgpIpAddresses to be used for virtual network gateway Connection.
  /// [id] Resource ID.
  /// [ingressBytesTransferred] The ingress bytes transferred in this connection.
  /// [ingressNatRules] List of ingress NatRules.
  /// [ipsecPolicies] The IPSec Policies to be considered by this connection.
  /// [localNetworkGateway2] The reference to local network gateway resource.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [peer] The reference to peerings resource.
  /// [provisioningState] The provisioning state of the virtual network gateway connection resource.
  /// [resourceGuid] The resource GUID property of the virtual network gateway connection resource.
  /// [routingWeight] The routing weight.
  /// [sharedKey] The IPSec shared key.
  /// [tags] Resource tags.
  /// [trafficSelectorPolicies] The Traffic Selector Policies to be considered by this connection.
  /// [tunnelConnectionStatus] Collection of all tunnels' connection health status.
  /// [type] Resource type.
  /// [useLocalAzureIpAddress] Use private local Azure IP for the connection.
  /// [usePolicyBasedTrafficSelectors] Enable policy-based traffic selectors.
  /// [virtualNetworkGateway1] The reference to virtual network gateway resource.
  /// [virtualNetworkGateway2] The reference to virtual network gateway resource.
  const GetVirtualNetworkGatewayConnectionResult({
    this.authorizationKey,
    required this.azureApiVersion,
    this.connectionMode,
    this.connectionProtocol,
    required this.connectionStatus,
    required this.connectionType,
    this.dpdTimeoutSeconds,
    required this.egressBytesTransferred,
    this.egressNatRules,
    this.enableBgp,
    this.enablePrivateLinkFastPath,
    required this.etag,
    this.expressRouteGatewayBypass,
    this.gatewayCustomBgpIpAddresses,
    this.id,
    required this.ingressBytesTransferred,
    this.ingressNatRules,
    this.ipsecPolicies,
    this.localNetworkGateway2,
    this.location,
    required this.name,
    this.peer,
    required this.provisioningState,
    required this.resourceGuid,
    this.routingWeight,
    this.sharedKey,
    this.tags,
    this.trafficSelectorPolicies,
    required this.tunnelConnectionStatus,
    required this.type,
    this.useLocalAzureIpAddress,
    this.usePolicyBasedTrafficSelectors,
    required this.virtualNetworkGateway1,
    this.virtualNetworkGateway2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'azureApiVersion': azureApiVersion,
      'connectionMode': ?connectionMode,
      'connectionProtocol': ?connectionProtocol,
      'connectionStatus': connectionStatus,
      'connectionType': connectionType,
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'egressBytesTransferred': egressBytesTransferred,
      'egressNatRules': ?(() { final guardedValue = egressNatRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enableBgp': ?enableBgp,
      'enablePrivateLinkFastPath': ?enablePrivateLinkFastPath,
      'etag': etag,
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'gatewayCustomBgpIpAddresses': ?(() { final guardedValue = gatewayCustomBgpIpAddresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GatewayCustomBgpIpAddressIpConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ingressBytesTransferred': ingressBytesTransferred,
      'ingressNatRules': ?(() { final guardedValue = ingressNatRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipsecPolicies': ?(() { final guardedValue = ipsecPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<IpsecPolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'localNetworkGateway2': ?localNetworkGateway2?.toMap(),
      'location': ?location,
      'name': name,
      'peer': ?peer?.toMap(),
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'tags': ?tags,
      'trafficSelectorPolicies': ?(() { final guardedValue = trafficSelectorPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<TrafficSelectorPolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tunnelConnectionStatus': pulumi.Input.encodeList<TunnelConnectionHealthResponse, Map<String, dynamic>>(tunnelConnectionStatus, (value) => value.toMap()),
      'type': type,
      'useLocalAzureIpAddress': ?useLocalAzureIpAddress,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'virtualNetworkGateway1': virtualNetworkGateway1.toMap(),
      'virtualNetworkGateway2': ?virtualNetworkGateway2?.toMap(),
    };
  }

  factory GetVirtualNetworkGatewayConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayConnectionResult(
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      connectionMode: (() { final guardedValue = map['connectionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionProtocol: (() { final guardedValue = map['connectionProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionStatus: map['connectionStatus'] as String,
      connectionType: map['connectionType'] as String,
      dpdTimeoutSeconds: (() { final guardedValue = map['dpdTimeoutSeconds']; if (guardedValue == null) return null; return guardedValue as int; })(),
      egressBytesTransferred: map['egressBytesTransferred'] as double,
      egressNatRules: (() { final guardedValue = map['egressNatRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      enableBgp: (() { final guardedValue = map['enableBgp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePrivateLinkFastPath: (() { final guardedValue = map['enablePrivateLinkFastPath']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: map['etag'] as String,
      expressRouteGatewayBypass: (() { final guardedValue = map['expressRouteGatewayBypass']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      gatewayCustomBgpIpAddresses: (() { final guardedValue = map['gatewayCustomBgpIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GatewayCustomBgpIpAddressIpConfigurationResponse>(guardedValue, (value) => GatewayCustomBgpIpAddressIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingressBytesTransferred: map['ingressBytesTransferred'] as double,
      ingressNatRules: (() { final guardedValue = map['ingressNatRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipsecPolicies: (() { final guardedValue = map['ipsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpsecPolicyResponse>(guardedValue, (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      localNetworkGateway2: (() { final guardedValue = map['localNetworkGateway2']; if (guardedValue == null) return null; return LocalNetworkGatewayResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      peer: (() { final guardedValue = map['peer']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      routingWeight: (() { final guardedValue = map['routingWeight']; if (guardedValue == null) return null; return guardedValue as int; })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      trafficSelectorPolicies: (() { final guardedValue = map['trafficSelectorPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrafficSelectorPolicyResponse>(guardedValue, (value) => TrafficSelectorPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tunnelConnectionStatus: pulumi.Input.decodeList<TunnelConnectionHealthResponse>(map['tunnelConnectionStatus']!, (value) => TunnelConnectionHealthResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      useLocalAzureIpAddress: (() { final guardedValue = map['useLocalAzureIpAddress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      usePolicyBasedTrafficSelectors: (() { final guardedValue = map['usePolicyBasedTrafficSelectors']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      virtualNetworkGateway1: VirtualNetworkGatewayResponse.fromMap((map['virtualNetworkGateway1']! as Map).cast<String, dynamic>()),
      virtualNetworkGateway2: (() { final guardedValue = map['virtualNetworkGateway2']; if (guardedValue == null) return null; return VirtualNetworkGatewayResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
