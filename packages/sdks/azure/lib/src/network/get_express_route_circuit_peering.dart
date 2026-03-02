// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExpressRouteCircuitPeering {
  /// The Either a 16-bit or a 32-bit ASN for Azure.
  final pulumi.Input<int> azureAsn;
  /// The Either a 16-bit or a 32-bit ASN. Can either be public or private.
  final pulumi.Input<int> peerAsn;
  /// The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`. Changing this forces a new resource to be created.
  final pulumi.Input<String> peeringType;
  /// A `/30` subnet for the primary link.
  final pulumi.Input<String> primaryPeerAddressPrefix;
  /// A `/30` subnet for the secondary link.
  final pulumi.Input<String> secondaryPeerAddressPrefix;
  /// The shared key. Can be a maximum of 25 characters.
  final pulumi.Input<String> sharedKey;
  /// A valid VLAN ID to establish this peering on.
  final pulumi.Input<int> vlanId;

  /// Creates a new [GetExpressRouteCircuitPeering].
  /// [azureAsn] The Either a 16-bit or a 32-bit ASN for Azure.
  /// [peerAsn] The Either a 16-bit or a 32-bit ASN. Can either be public or private.
  /// [peeringType] The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`. Changing this forces a new resource to be created.
  /// [primaryPeerAddressPrefix] A `/30` subnet for the primary link.
  /// [secondaryPeerAddressPrefix] A `/30` subnet for the secondary link.
  /// [sharedKey] The shared key. Can be a maximum of 25 characters.
  /// [vlanId] A valid VLAN ID to establish this peering on.
  GetExpressRouteCircuitPeering({
    required this.azureAsn,
    required this.peerAsn,
    required this.peeringType,
    required this.primaryPeerAddressPrefix,
    required this.secondaryPeerAddressPrefix,
    required this.sharedKey,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureAsn': azureAsn,
      'peerAsn': peerAsn,
      'peeringType': peeringType,
      'primaryPeerAddressPrefix': primaryPeerAddressPrefix,
      'secondaryPeerAddressPrefix': secondaryPeerAddressPrefix,
      'sharedKey': sharedKey,
      'vlanId': vlanId,
    };
  }

  factory GetExpressRouteCircuitPeering.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitPeering(
      azureAsn: (map['azureAsn'] as int).input(),
      peerAsn: (map['peerAsn'] as int).input(),
      peeringType: (map['peeringType'] as String).input(),
      primaryPeerAddressPrefix: (map['primaryPeerAddressPrefix'] as String).input(),
      secondaryPeerAddressPrefix: (map['secondaryPeerAddressPrefix'] as String).input(),
      sharedKey: (map['sharedKey'] as String).input(),
      vlanId: (map['vlanId'] as int).input(),
    );
  }
}

