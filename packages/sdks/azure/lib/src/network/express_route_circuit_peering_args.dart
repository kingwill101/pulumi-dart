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
  /// > **Note:** only one Peering of each Type can be created. Attempting to create multiple peerings of the same type will overwrite the original peering.
  final pulumi.Input<String> peeringType;
  /// A subnet for the primary link.
  final pulumi.Input<String>? primaryPeerAddressPrefix;
  /// The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Route Filter. Only available when `peering_type` is set to `MicrosoftPeering`.
  ///
  /// > **Note:** `ipv6` can be specified when `peering_type` is `MicrosoftPeering` or `AzurePrivatePeering`
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
    required pulumi.Output<String> expressRouteCircuitName,
    pulumi.Output<bool>? ipv4Enabled,
    pulumi.Output<ExpressRouteCircuitPeeringIpv6>? ipv6,
    pulumi.Output<ExpressRouteCircuitPeeringMicrosoftPeeringConfig>? microsoftPeeringConfig,
    pulumi.Output<int>? peerAsn,
    required pulumi.Output<String> peeringType,
    pulumi.Output<String>? primaryPeerAddressPrefix,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? routeFilterId,
    pulumi.Output<String>? secondaryPeerAddressPrefix,
    pulumi.Output<String>? sharedKey,
    required pulumi.Output<int> vlanId,
  }) :
      expressRouteCircuitName = pulumi.Input.asInput<String>(expressRouteCircuitName),
      ipv4Enabled = pulumi.Input.asOptionalInput<bool>(ipv4Enabled),
      ipv6 = pulumi.Input.asOptionalInput<ExpressRouteCircuitPeeringIpv6>(ipv6),
      microsoftPeeringConfig = pulumi.Input.asOptionalInput<ExpressRouteCircuitPeeringMicrosoftPeeringConfig>(microsoftPeeringConfig),
      peerAsn = pulumi.Input.asOptionalInput<int>(peerAsn),
      peeringType = pulumi.Input.asInput<String>(peeringType),
      primaryPeerAddressPrefix = pulumi.Input.asOptionalInput<String>(primaryPeerAddressPrefix),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeFilterId = pulumi.Input.asOptionalInput<String>(routeFilterId),
      secondaryPeerAddressPrefix = pulumi.Input.asOptionalInput<String>(secondaryPeerAddressPrefix),
      sharedKey = pulumi.Input.asOptionalInput<String>(sharedKey),
      vlanId = pulumi.Input.asInput<int>(vlanId);

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
      expressRouteCircuitName: pulumi.Output.create<String>(map['expressRouteCircuitName'] as String),
      ipv4Enabled: map['ipv4Enabled'] == null ? null : pulumi.Output.create<bool>(map['ipv4Enabled'] as bool),
      ipv6: map['ipv6'] == null ? null : pulumi.Output.create<ExpressRouteCircuitPeeringIpv6>(ExpressRouteCircuitPeeringIpv6.fromMap((map['ipv6'] as Map).cast<String, dynamic>())),
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : pulumi.Output.create<ExpressRouteCircuitPeeringMicrosoftPeeringConfig>(ExpressRouteCircuitPeeringMicrosoftPeeringConfig.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>())),
      peerAsn: map['peerAsn'] == null ? null : pulumi.Output.create<int>(map['peerAsn'] as int),
      peeringType: pulumi.Output.create<String>(map['peeringType'] as String),
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : pulumi.Output.create<String>(map['primaryPeerAddressPrefix'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeFilterId: map['routeFilterId'] == null ? null : pulumi.Output.create<String>(map['routeFilterId'] as String),
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] == null ? null : pulumi.Output.create<String>(map['secondaryPeerAddressPrefix'] as String),
      sharedKey: map['sharedKey'] == null ? null : pulumi.Output.create<String>(map['sharedKey'] as String),
      vlanId: pulumi.Output.create<int>(map['vlanId'] as int),
    );
  }
}

