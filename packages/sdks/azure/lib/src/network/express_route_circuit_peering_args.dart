// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_ipv6.dart';
import 'express_route_circuit_peering_microsoft_peering_config.dart';

/// {@template pulumi_network_express_route_circuit_peering_express_route_circuit_peering_args_doc}
/// The set of arguments for ExpressRouteCircuitPeering.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_circuit_peering_express_route_circuit_peering_args_doc}
class ExpressRouteCircuitPeeringArgs {
  /// The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created.
  final pulumi.Input<String> expressRouteCircuitName;
  /// A boolean value indicating whether the IPv4 peering is enabled. Defaults to `true`.
  final pulumi.Input<bool>? ipv4Enabled;
  /// A `ipv6` block as defined below.
  final pulumi.Input<ExpressRouteCircuitPeeringIpv6>? ipv6;
  /// A `microsoft_peering_config` block as defined below. Required when `peering_type` is set to `MicrosoftPeering` and config for IPv4.
  final pulumi.Input<ExpressRouteCircuitPeeringMicrosoftPeeringConfig>? microsoftPeeringConfig;
  /// The Either a 16-bit or a 32-bit ASN. Can either be public or private.
  final pulumi.Input<int>? peerAsn;
  /// The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`.
  ///
  /// &gt; **Note:** only one Peering of each Type can be created. Attempting to create multiple peerings of the same type will overwrite the original peering.
  final pulumi.Input<String> peeringType;
  /// A subnet for the primary link.
  final pulumi.Input<String>? primaryPeerAddressPrefix;
  /// The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Route Filter. Only available when `peering_type` is set to `MicrosoftPeering`.
  ///
  /// &gt; **Note:** `ipv6` can be specified when `peering_type` is `MicrosoftPeering` or `AzurePrivatePeering`
  final pulumi.Input<String>? routeFilterId;
  /// A subnet for the secondary link.
  final pulumi.Input<String>? secondaryPeerAddressPrefix;
  /// The shared key. Can be a maximum of 25 characters.
  final pulumi.Input<String>? sharedKey;
  /// A valid VLAN ID to establish this peering on.
  final pulumi.Input<int> vlanId;

  /// Creates a new [ExpressRouteCircuitPeeringArgs].
  /// [expressRouteCircuitName] The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created.
  /// [ipv4Enabled] A boolean value indicating whether the IPv4 peering is enabled. Defaults to `true`.
  /// [ipv6] A `ipv6` block as defined below.
  /// [microsoftPeeringConfig] A `microsoft_peering_config` block as defined below. Required when `peering_type` is set to `MicrosoftPeering` and config for IPv4.
  /// [peerAsn] The Either a 16-bit or a 32-bit ASN. Can either be public or private.
  /// [peeringType] The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`.
  /// [primaryPeerAddressPrefix] A subnet for the primary link.
  /// [resourceGroupName] The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created.
  /// [routeFilterId] The ID of the Route Filter. Only available when `peering_type` is set to `MicrosoftPeering`.
  /// [secondaryPeerAddressPrefix] A subnet for the secondary link.
  /// [sharedKey] The shared key. Can be a maximum of 25 characters.
  /// [vlanId] A valid VLAN ID to establish this peering on.
  ExpressRouteCircuitPeeringArgs({
    required this.expressRouteCircuitName,
    this.ipv4Enabled,
    this.ipv6,
    this.microsoftPeeringConfig,
    this.peerAsn,
    required this.peeringType,
    this.primaryPeerAddressPrefix,
    required this.resourceGroupName,
    this.routeFilterId,
    this.secondaryPeerAddressPrefix,
    this.sharedKey,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRouteCircuitName': expressRouteCircuitName,
      'ipv4Enabled': ?ipv4Enabled,
      'ipv6': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitPeeringIpv6, Map<String, dynamic>>(ipv6, (value) => value.toMap()),
      'microsoftPeeringConfig': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitPeeringMicrosoftPeeringConfig, Map<String, dynamic>>(microsoftPeeringConfig, (value) => value.toMap()),
      'peerAsn': ?peerAsn,
      'peeringType': peeringType,
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'resourceGroupName': resourceGroupName,
      'routeFilterId': ?routeFilterId,
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'sharedKey': ?sharedKey,
      'vlanId': vlanId,
    };
  }

  factory ExpressRouteCircuitPeeringArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringArgs(
      expressRouteCircuitName: pulumi.Input.fromValue(map['expressRouteCircuitName'] as String),
      ipv4Enabled: (() { final guardedValue = map['ipv4Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteCircuitPeeringIpv6.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      microsoftPeeringConfig: (() { final guardedValue = map['microsoftPeeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteCircuitPeeringMicrosoftPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peeringType: pulumi.Input.fromValue(map['peeringType'] as String),
      primaryPeerAddressPrefix: (() { final guardedValue = map['primaryPeerAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeFilterId: (() { final guardedValue = map['routeFilterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryPeerAddressPrefix: (() { final guardedValue = map['secondaryPeerAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanId: pulumi.Input.fromValue(map['vlanId'] as int),
    );
  }
}

