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
  final pulumi.Input<List<GatewayCustomBgpIpAddressIpConfiguration>>?
  gatewayCustomBgpIpAddresses;

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
      'egressNatRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubResource>,
            List<Map<String, dynamic>>
          >(
            egressNatRules,
            (value) =>
                pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'enableBgp': ?enableBgp,
      'enablePrivateLinkFastPath': ?enablePrivateLinkFastPath,
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'gatewayCustomBgpIpAddresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<GatewayCustomBgpIpAddressIpConfiguration>,
            List<Map<String, dynamic>>
          >(
            gatewayCustomBgpIpAddresses,
            (value) =>
                pulumi.Input.encodeList<
                  GatewayCustomBgpIpAddressIpConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': ?id,
      'ingressNatRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubResource>,
            List<Map<String, dynamic>>
          >(
            ingressNatRules,
            (value) =>
                pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'ipsecPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<IpsecPolicy>,
            List<Map<String, dynamic>>
          >(
            ipsecPolicies,
            (value) =>
                pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'localNetworkGateway2': ?localNetworkGateway2,
      'location': ?location,
      'peer':
          ?pulumi.Input.mapOptionalInputValue<
            SubResource,
            Map<String, dynamic>
          >(peer, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'tags': ?tags,
      'trafficSelectorPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<TrafficSelectorPolicy>,
            List<Map<String, dynamic>>
          >(
            trafficSelectorPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  TrafficSelectorPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'useLocalAzureIpAddress': ?useLocalAzureIpAddress,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'virtualNetworkGateway1': virtualNetworkGateway1,
      'virtualNetworkGateway2': ?virtualNetworkGateway2,
      'virtualNetworkGatewayConnectionName':
          ?virtualNetworkGatewayConnectionName,
    };
  }

  factory VirtualNetworkGatewayConnectionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNetworkGatewayConnectionArgs(
      authorizationKey: (() {
        final guardedValue = map['authorizationKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionMode: (() {
        final guardedValue = map['connectionMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionProtocol: (() {
        final guardedValue = map['connectionProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionType: pulumi.Input.fromValue(map['connectionType'] as String),
      dpdTimeoutSeconds: (() {
        final guardedValue = map['dpdTimeoutSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      egressNatRules: (() {
        final guardedValue = map['egressNatRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubResource>(
            guardedValue,
            (value) =>
                SubResource.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      enableBgp: (() {
        final guardedValue = map['enableBgp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enablePrivateLinkFastPath: (() {
        final guardedValue = map['enablePrivateLinkFastPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      expressRouteGatewayBypass: (() {
        final guardedValue = map['expressRouteGatewayBypass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      gatewayCustomBgpIpAddresses: (() {
        final guardedValue = map['gatewayCustomBgpIpAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GatewayCustomBgpIpAddressIpConfiguration>(
            guardedValue,
            (value) => GatewayCustomBgpIpAddressIpConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ingressNatRules: (() {
        final guardedValue = map['ingressNatRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubResource>(
            guardedValue,
            (value) =>
                SubResource.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      ipsecPolicies: (() {
        final guardedValue = map['ipsecPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IpsecPolicy>(
            guardedValue,
            (value) =>
                IpsecPolicy.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      localNetworkGateway2: (() {
        final guardedValue = map['localNetworkGateway2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          guardedValue as LocalNetworkGatewayNetwork,
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peer: (() {
        final guardedValue = map['peer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      routingWeight: (() {
        final guardedValue = map['routingWeight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sharedKey: (() {
        final guardedValue = map['sharedKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      trafficSelectorPolicies: (() {
        final guardedValue = map['trafficSelectorPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TrafficSelectorPolicy>(
            guardedValue,
            (value) => TrafficSelectorPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      useLocalAzureIpAddress: (() {
        final guardedValue = map['useLocalAzureIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      usePolicyBasedTrafficSelectors: (() {
        final guardedValue = map['usePolicyBasedTrafficSelectors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      virtualNetworkGateway1: pulumi.Input.fromValue(
        map['virtualNetworkGateway1'] as VirtualNetworkGatewayNetwork,
      ),
      virtualNetworkGateway2: (() {
        final guardedValue = map['virtualNetworkGateway2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          guardedValue as VirtualNetworkGatewayNetwork,
        );
      })(),
      virtualNetworkGatewayConnectionName: (() {
        final guardedValue = map['virtualNetworkGatewayConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
