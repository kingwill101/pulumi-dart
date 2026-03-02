// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_custom_bgp_ip_address_ip_configuration.dart';
import 'ipsec_policy.dart';
import 'local_network_gateway_network.dart';
import 'sub_resource.dart';
import 'traffic_selector_policy.dart';
import 'virtual_network_gateway_network.dart';

/// {@template pulumi_network_virtual_network_gateway_connection_args_doc}
/// The set of arguments for VirtualNetworkGatewayConnection.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_gateway_connection_args_doc}
class VirtualNetworkGatewayConnectionArgs {
  /// The authorizationKey.
  final pulumi.Input<String>? authorizationKey;
  /// The connection mode for this connection.
  final pulumi.Input<String>? connectionMode;
  /// Connection protocol used for this connection.
  final pulumi.Input<String>? connectionProtocol;
  /// Gateway connection type.
  final pulumi.Input<String> connectionType;
  /// The dead peer detection timeout of this connection in seconds.
  final pulumi.Input<int>? dpdTimeoutSeconds;
  /// List of egress NatRules.
  final pulumi.Input<List<SubResource>>? egressNatRules;
  /// EnableBgp flag.
  final pulumi.Input<bool>? enableBgp;
  /// Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  final pulumi.Input<bool>? enablePrivateLinkFastPath;
  /// Bypass ExpressRoute Gateway for data forwarding.
  final pulumi.Input<bool>? expressRouteGatewayBypass;
  /// GatewayCustomBgpIpAddresses to be used for virtual network gateway Connection.
  final pulumi.Input<List<GatewayCustomBgpIpAddressIpConfiguration>>? gatewayCustomBgpIpAddresses;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// List of ingress NatRules.
  final pulumi.Input<List<SubResource>>? ingressNatRules;
  /// The IPSec Policies to be considered by this connection.
  final pulumi.Input<List<IpsecPolicy>>? ipsecPolicies;
  /// The reference to local network gateway resource.
  final pulumi.Input<LocalNetworkGatewayNetwork>? localNetworkGateway2;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The reference to peerings resource.
  final pulumi.Input<SubResource>? peer;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The routing weight.
  final pulumi.Input<int>? routingWeight;
  /// The IPSec shared key.
  final pulumi.Input<String>? sharedKey;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Traffic Selector Policies to be considered by this connection.
  final pulumi.Input<List<TrafficSelectorPolicy>>? trafficSelectorPolicies;
  /// Use private local Azure IP for the connection.
  final pulumi.Input<bool>? useLocalAzureIpAddress;
  /// Enable policy-based traffic selectors.
  final pulumi.Input<bool>? usePolicyBasedTrafficSelectors;
  /// The reference to virtual network gateway resource.
  final pulumi.Input<VirtualNetworkGatewayNetwork> virtualNetworkGateway1;
  /// The reference to virtual network gateway resource.
  final pulumi.Input<VirtualNetworkGatewayNetwork>? virtualNetworkGateway2;
  /// The name of the virtual network gateway connection.
  final pulumi.Input<String>? virtualNetworkGatewayConnectionName;

  /// Creates a new [VirtualNetworkGatewayConnectionArgs].
  /// [authorizationKey] The authorizationKey.
  /// [connectionMode] The connection mode for this connection.
  /// [connectionProtocol] Connection protocol used for this connection.
  /// [connectionType] Gateway connection type.
  /// [dpdTimeoutSeconds] The dead peer detection timeout of this connection in seconds.
  /// [egressNatRules] List of egress NatRules.
  /// [enableBgp] EnableBgp flag.
  /// [enablePrivateLinkFastPath] Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  /// [expressRouteGatewayBypass] Bypass ExpressRoute Gateway for data forwarding.
  /// [gatewayCustomBgpIpAddresses] GatewayCustomBgpIpAddresses to be used for virtual network gateway Connection.
  /// [id] Resource ID.
  /// [ingressNatRules] List of ingress NatRules.
  /// [ipsecPolicies] The IPSec Policies to be considered by this connection.
  /// [localNetworkGateway2] The reference to local network gateway resource.
  /// [location] Resource location.
  /// [peer] The reference to peerings resource.
  /// [resourceGroupName] The name of the resource group.
  /// [routingWeight] The routing weight.
  /// [sharedKey] The IPSec shared key.
  /// [tags] Resource tags.
  /// [trafficSelectorPolicies] The Traffic Selector Policies to be considered by this connection.
  /// [useLocalAzureIpAddress] Use private local Azure IP for the connection.
  /// [usePolicyBasedTrafficSelectors] Enable policy-based traffic selectors.
  /// [virtualNetworkGateway1] The reference to virtual network gateway resource.
  /// [virtualNetworkGateway2] The reference to virtual network gateway resource.
  /// [virtualNetworkGatewayConnectionName] The name of the virtual network gateway connection.
  VirtualNetworkGatewayConnectionArgs({
    this.authorizationKey,
    this.connectionMode,
    this.connectionProtocol,
    required this.connectionType,
    this.dpdTimeoutSeconds,
    this.egressNatRules,
    this.enableBgp,
    this.enablePrivateLinkFastPath,
    this.expressRouteGatewayBypass,
    this.gatewayCustomBgpIpAddresses,
    this.id,
    this.ingressNatRules,
    this.ipsecPolicies,
    this.localNetworkGateway2,
    this.location,
    this.peer,
    required this.resourceGroupName,
    this.routingWeight,
    this.sharedKey,
    this.tags,
    this.trafficSelectorPolicies,
    this.useLocalAzureIpAddress,
    this.usePolicyBasedTrafficSelectors,
    required this.virtualNetworkGateway1,
    this.virtualNetworkGateway2,
    this.virtualNetworkGatewayConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'connectionMode': ?connectionMode,
      'connectionProtocol': ?connectionProtocol,
      'connectionType': connectionType,
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'egressNatRules': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(egressNatRules, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableBgp': ?enableBgp,
      'enablePrivateLinkFastPath': ?enablePrivateLinkFastPath,
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'gatewayCustomBgpIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<GatewayCustomBgpIpAddressIpConfiguration>, List<Map<String, dynamic>>>(gatewayCustomBgpIpAddresses, (value) => pulumi.Input.encodeList<GatewayCustomBgpIpAddressIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'ingressNatRules': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(ingressNatRules, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<IpsecPolicy>, List<Map<String, dynamic>>>(ipsecPolicies, (value) => pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localNetworkGateway2': ?localNetworkGateway2,
      'location': ?location,
      'peer': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(peer, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'tags': ?tags,
      'trafficSelectorPolicies': ?pulumi.Input.mapOptionalInputValue<List<TrafficSelectorPolicy>, List<Map<String, dynamic>>>(trafficSelectorPolicies, (value) => pulumi.Input.encodeList<TrafficSelectorPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useLocalAzureIpAddress': ?useLocalAzureIpAddress,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'virtualNetworkGateway1': virtualNetworkGateway1,
      'virtualNetworkGateway2': ?virtualNetworkGateway2,
      'virtualNetworkGatewayConnectionName': ?virtualNetworkGatewayConnectionName,
    };
  }

  factory VirtualNetworkGatewayConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayConnectionArgs(
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey']! as String).input(),
      connectionMode: map['connectionMode'] == null ? null : (map['connectionMode']! as String).input(),
      connectionProtocol: map['connectionProtocol'] == null ? null : (map['connectionProtocol']! as String).input(),
      connectionType: (map['connectionType'] as String).input(),
      dpdTimeoutSeconds: map['dpdTimeoutSeconds'] == null ? null : (map['dpdTimeoutSeconds']! as int).input(),
      egressNatRules: map['egressNatRules'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['egressNatRules']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableBgp: map['enableBgp'] == null ? null : (map['enableBgp']! as bool).input(),
      enablePrivateLinkFastPath: map['enablePrivateLinkFastPath'] == null ? null : (map['enablePrivateLinkFastPath']! as bool).input(),
      expressRouteGatewayBypass: map['expressRouteGatewayBypass'] == null ? null : (map['expressRouteGatewayBypass']! as bool).input(),
      gatewayCustomBgpIpAddresses: map['gatewayCustomBgpIpAddresses'] == null ? null : (pulumi.Input.decodeList<GatewayCustomBgpIpAddressIpConfiguration>(map['gatewayCustomBgpIpAddresses']!, (value) => GatewayCustomBgpIpAddressIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ingressNatRules: map['ingressNatRules'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['ingressNatRules']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipsecPolicies: map['ipsecPolicies'] == null ? null : (pulumi.Input.decodeList<IpsecPolicy>(map['ipsecPolicies']!, (value) => IpsecPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localNetworkGateway2: map['localNetworkGateway2'] == null ? null : (map['localNetworkGateway2']! as LocalNetworkGatewayNetwork).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      peer: map['peer'] == null ? null : (SubResource.fromMap((map['peer']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routingWeight: map['routingWeight'] == null ? null : (map['routingWeight']! as int).input(),
      sharedKey: map['sharedKey'] == null ? null : (map['sharedKey']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      trafficSelectorPolicies: map['trafficSelectorPolicies'] == null ? null : (pulumi.Input.decodeList<TrafficSelectorPolicy>(map['trafficSelectorPolicies']!, (value) => TrafficSelectorPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      useLocalAzureIpAddress: map['useLocalAzureIpAddress'] == null ? null : (map['useLocalAzureIpAddress']! as bool).input(),
      usePolicyBasedTrafficSelectors: map['usePolicyBasedTrafficSelectors'] == null ? null : (map['usePolicyBasedTrafficSelectors']! as bool).input(),
      virtualNetworkGateway1: (map['virtualNetworkGateway1'] as VirtualNetworkGatewayNetwork).input(),
      virtualNetworkGateway2: map['virtualNetworkGateway2'] == null ? null : (map['virtualNetworkGateway2']! as VirtualNetworkGatewayNetwork).input(),
      virtualNetworkGatewayConnectionName: map['virtualNetworkGatewayConnectionName'] == null ? null : (map['virtualNetworkGatewayConnectionName']! as String).input(),
    );
  }
}

