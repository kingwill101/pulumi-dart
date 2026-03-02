// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_ipv6.dart';
import 'express_route_circuit_peering_microsoft_peering_config.dart';

/// Input properties used for looking up and filtering ExpressRouteCircuitPeering resources.
class ExpressRouteCircuitPeeringState {
  /// The ASN used by Azure.
  final pulumi.Input<int>? azureAsn;
  /// The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created.
  final pulumi.Input<String>? expressRouteCircuitName;
  final pulumi.Input<String>? gatewayManagerEtag;
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
  final pulumi.Input<String>? peeringType;
  /// The Primary Port used by Azure for this Peering.
  final pulumi.Input<String>? primaryAzurePort;
  /// A subnet for the primary link.
  final pulumi.Input<String>? primaryPeerAddressPrefix;
  /// The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the Route Filter. Only available when `peering_type` is set to `MicrosoftPeering`.
  ///
  /// > **Note:** `ipv6` can be specified when `peering_type` is `MicrosoftPeering` or `AzurePrivatePeering`
  final pulumi.Input<String>? routeFilterId;
  /// The Secondary Port used by Azure for this Peering.
  final pulumi.Input<String>? secondaryAzurePort;
  /// A subnet for the secondary link.
  final pulumi.Input<String>? secondaryPeerAddressPrefix;
  /// The shared key. Can be a maximum of 25 characters.
  final pulumi.Input<String>? sharedKey;
  /// A valid VLAN ID to establish this peering on.
  final pulumi.Input<int>? vlanId;

  /// Creates a new [ExpressRouteCircuitPeeringState].
  /// [azureAsn] The ASN used by Azure.
  /// [expressRouteCircuitName] The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created.
  /// [gatewayManagerEtag] Optional.
  /// [ipv4Enabled] A boolean value indicating whether the IPv4 peering is enabled. Defaults to `true`.
  /// [ipv6] A `ipv6` block as defined below.
  /// [microsoftPeeringConfig] A `microsoft_peering_config` block as defined below. Required when `peering_type` is set to `MicrosoftPeering` and config for IPv4.
  /// [peerAsn] The Either a 16-bit or a 32-bit ASN. Can either be public or private.
  /// [peeringType] The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`.
  /// [primaryAzurePort] The Primary Port used by Azure for this Peering.
  /// [primaryPeerAddressPrefix] A subnet for the primary link.
  /// [resourceGroupName] The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created.
  /// [routeFilterId] The ID of the Route Filter. Only available when `peering_type` is set to `MicrosoftPeering`.
  /// [secondaryAzurePort] The Secondary Port used by Azure for this Peering.
  /// [secondaryPeerAddressPrefix] A subnet for the secondary link.
  /// [sharedKey] The shared key. Can be a maximum of 25 characters.
  /// [vlanId] A valid VLAN ID to establish this peering on.
  ExpressRouteCircuitPeeringState({
    this.azureAsn,
    this.expressRouteCircuitName,
    this.gatewayManagerEtag,
    this.ipv4Enabled,
    this.ipv6,
    this.microsoftPeeringConfig,
    this.peerAsn,
    this.peeringType,
    this.primaryAzurePort,
    this.primaryPeerAddressPrefix,
    this.resourceGroupName,
    this.routeFilterId,
    this.secondaryAzurePort,
    this.secondaryPeerAddressPrefix,
    this.sharedKey,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureAsn': ?azureAsn,
      'expressRouteCircuitName': ?expressRouteCircuitName,
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'ipv4Enabled': ?ipv4Enabled,
      'ipv6': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitPeeringIpv6, Map<String, dynamic>>(ipv6, (value) => value.toMap()),
      'microsoftPeeringConfig': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitPeeringMicrosoftPeeringConfig, Map<String, dynamic>>(microsoftPeeringConfig, (value) => value.toMap()),
      'peerAsn': ?peerAsn,
      'peeringType': ?peeringType,
      'primaryAzurePort': ?primaryAzurePort,
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'resourceGroupName': ?resourceGroupName,
      'routeFilterId': ?routeFilterId,
      'secondaryAzurePort': ?secondaryAzurePort,
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'sharedKey': ?sharedKey,
      'vlanId': ?vlanId,
    };
  }

  factory ExpressRouteCircuitPeeringState.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringState(
      azureAsn: map['azureAsn'] == null ? null : (map['azureAsn'] as int).input(),
      expressRouteCircuitName: map['expressRouteCircuitName'] == null ? null : (map['expressRouteCircuitName'] as String).input(),
      gatewayManagerEtag: map['gatewayManagerEtag'] == null ? null : (map['gatewayManagerEtag'] as String).input(),
      ipv4Enabled: map['ipv4Enabled'] == null ? null : (map['ipv4Enabled'] as bool).input(),
      ipv6: map['ipv6'] == null ? null : (ExpressRouteCircuitPeeringIpv6.fromMap((map['ipv6'] as Map).cast<String, dynamic>())).input(),
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : (ExpressRouteCircuitPeeringMicrosoftPeeringConfig.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>())).input(),
      peerAsn: map['peerAsn'] == null ? null : (map['peerAsn'] as int).input(),
      peeringType: map['peeringType'] == null ? null : (map['peeringType'] as String).input(),
      primaryAzurePort: map['primaryAzurePort'] == null ? null : (map['primaryAzurePort'] as String).input(),
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : (map['primaryPeerAddressPrefix'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      routeFilterId: map['routeFilterId'] == null ? null : (map['routeFilterId'] as String).input(),
      secondaryAzurePort: map['secondaryAzurePort'] == null ? null : (map['secondaryAzurePort'] as String).input(),
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] == null ? null : (map['secondaryPeerAddressPrefix'] as String).input(),
      sharedKey: map['sharedKey'] == null ? null : (map['sharedKey'] as String).input(),
      vlanId: map['vlanId'] == null ? null : (map['vlanId'] as int).input(),
    );
  }
}

