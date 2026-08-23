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
  /// A `microsoftPeeringConfig` block as defined below. Required when `peeringType` is set to `MicrosoftPeering` and config for IPv4.
  final pulumi.Input<ExpressRouteCircuitPeeringMicrosoftPeeringConfig>? microsoftPeeringConfig;
  /// The Either a 16-bit or a 32-bit ASN. Can either be public or private.
  final pulumi.Input<int>? peerAsn;
  /// The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`.
  ///
  /// &gt; **Note:** only one Peering of each Type can be created. Attempting to create multiple peerings of the same type will overwrite the original peering.
  final pulumi.Input<String>? peeringType;
  /// The Primary Port used by Azure for this Peering.
  final pulumi.Input<String>? primaryAzurePort;
  /// A subnet for the primary link.
  final pulumi.Input<String>? primaryPeerAddressPrefix;
  /// The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the Route Filter. Only available when `peeringType` is set to `MicrosoftPeering`.
  ///
  /// &gt; **Note:** `ipv6` can be specified when `peeringType` is `MicrosoftPeering` or `AzurePrivatePeering`
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
  /// [microsoftPeeringConfig] A `microsoftPeeringConfig` block as defined below. Required when `peeringType` is set to `MicrosoftPeering` and config for IPv4.
  /// [peerAsn] The Either a 16-bit or a 32-bit ASN. Can either be public or private.
  /// [peeringType] The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`.
  /// [primaryAzurePort] The Primary Port used by Azure for this Peering.
  /// [primaryPeerAddressPrefix] A subnet for the primary link.
  /// [resourceGroupName] The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created.
  /// [routeFilterId] The ID of the Route Filter. Only available when `peeringType` is set to `MicrosoftPeering`.
  /// [secondaryAzurePort] The Secondary Port used by Azure for this Peering.
  /// [secondaryPeerAddressPrefix] A subnet for the secondary link.
  /// [sharedKey] The shared key. Can be a maximum of 25 characters.
  /// [vlanId] A valid VLAN ID to establish this peering on.
  const ExpressRouteCircuitPeeringState({
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
      azureAsn: (() { final guardedValue = map['azureAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      expressRouteCircuitName: (() { final guardedValue = map['expressRouteCircuitName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayManagerEtag: (() { final guardedValue = map['gatewayManagerEtag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4Enabled: (() { final guardedValue = map['ipv4Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteCircuitPeeringIpv6.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      microsoftPeeringConfig: (() { final guardedValue = map['microsoftPeeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteCircuitPeeringMicrosoftPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peeringType: (() { final guardedValue = map['peeringType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryAzurePort: (() { final guardedValue = map['primaryAzurePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryPeerAddressPrefix: (() { final guardedValue = map['primaryPeerAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeFilterId: (() { final guardedValue = map['routeFilterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryAzurePort: (() { final guardedValue = map['secondaryAzurePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryPeerAddressPrefix: (() { final guardedValue = map['secondaryPeerAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
