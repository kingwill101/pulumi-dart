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
    pulumi.Output<int>? azureAsn,
    pulumi.Output<String>? expressRouteCircuitName,
    pulumi.Output<String>? gatewayManagerEtag,
    pulumi.Output<bool>? ipv4Enabled,
    pulumi.Output<ExpressRouteCircuitPeeringIpv6>? ipv6,
    pulumi.Output<ExpressRouteCircuitPeeringMicrosoftPeeringConfig>? microsoftPeeringConfig,
    pulumi.Output<int>? peerAsn,
    pulumi.Output<String>? peeringType,
    pulumi.Output<String>? primaryAzurePort,
    pulumi.Output<String>? primaryPeerAddressPrefix,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? routeFilterId,
    pulumi.Output<String>? secondaryAzurePort,
    pulumi.Output<String>? secondaryPeerAddressPrefix,
    pulumi.Output<String>? sharedKey,
    pulumi.Output<int>? vlanId,
  }) :
      azureAsn = pulumi.Input.asOptionalInput<int>(azureAsn),
      expressRouteCircuitName = pulumi.Input.asOptionalInput<String>(expressRouteCircuitName),
      gatewayManagerEtag = pulumi.Input.asOptionalInput<String>(gatewayManagerEtag),
      ipv4Enabled = pulumi.Input.asOptionalInput<bool>(ipv4Enabled),
      ipv6 = pulumi.Input.asOptionalInput<ExpressRouteCircuitPeeringIpv6>(ipv6),
      microsoftPeeringConfig = pulumi.Input.asOptionalInput<ExpressRouteCircuitPeeringMicrosoftPeeringConfig>(microsoftPeeringConfig),
      peerAsn = pulumi.Input.asOptionalInput<int>(peerAsn),
      peeringType = pulumi.Input.asOptionalInput<String>(peeringType),
      primaryAzurePort = pulumi.Input.asOptionalInput<String>(primaryAzurePort),
      primaryPeerAddressPrefix = pulumi.Input.asOptionalInput<String>(primaryPeerAddressPrefix),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      routeFilterId = pulumi.Input.asOptionalInput<String>(routeFilterId),
      secondaryAzurePort = pulumi.Input.asOptionalInput<String>(secondaryAzurePort),
      secondaryPeerAddressPrefix = pulumi.Input.asOptionalInput<String>(secondaryPeerAddressPrefix),
      sharedKey = pulumi.Input.asOptionalInput<String>(sharedKey),
      vlanId = pulumi.Input.asOptionalInput<int>(vlanId);

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
      azureAsn: map['azureAsn'] == null ? null : pulumi.Output.create<int>(map['azureAsn'] as int),
      expressRouteCircuitName: map['expressRouteCircuitName'] == null ? null : pulumi.Output.create<String>(map['expressRouteCircuitName'] as String),
      gatewayManagerEtag: map['gatewayManagerEtag'] == null ? null : pulumi.Output.create<String>(map['gatewayManagerEtag'] as String),
      ipv4Enabled: map['ipv4Enabled'] == null ? null : pulumi.Output.create<bool>(map['ipv4Enabled'] as bool),
      ipv6: map['ipv6'] == null ? null : pulumi.Output.create<ExpressRouteCircuitPeeringIpv6>(ExpressRouteCircuitPeeringIpv6.fromMap((map['ipv6'] as Map).cast<String, dynamic>())),
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : pulumi.Output.create<ExpressRouteCircuitPeeringMicrosoftPeeringConfig>(ExpressRouteCircuitPeeringMicrosoftPeeringConfig.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>())),
      peerAsn: map['peerAsn'] == null ? null : pulumi.Output.create<int>(map['peerAsn'] as int),
      peeringType: map['peeringType'] == null ? null : pulumi.Output.create<String>(map['peeringType'] as String),
      primaryAzurePort: map['primaryAzurePort'] == null ? null : pulumi.Output.create<String>(map['primaryAzurePort'] as String),
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : pulumi.Output.create<String>(map['primaryPeerAddressPrefix'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeFilterId: map['routeFilterId'] == null ? null : pulumi.Output.create<String>(map['routeFilterId'] as String),
      secondaryAzurePort: map['secondaryAzurePort'] == null ? null : pulumi.Output.create<String>(map['secondaryAzurePort'] as String),
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] == null ? null : pulumi.Output.create<String>(map['secondaryPeerAddressPrefix'] as String),
      sharedKey: map['sharedKey'] == null ? null : pulumi.Output.create<String>(map['sharedKey'] as String),
      vlanId: map['vlanId'] == null ? null : pulumi.Output.create<int>(map['vlanId'] as int),
    );
  }
}

