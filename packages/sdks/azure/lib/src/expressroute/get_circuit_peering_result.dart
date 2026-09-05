// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCircuitPeering.
class GetCircuitPeeringResult {
  /// The ASN used by Azure for the peering.
  final int? azureAsn;
  final String? expressRouteCircuitName;
  final String? gatewayManagerEtag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Indicates if IPv4 is enabled.
  final bool? ipv4Enabled;
  final int? peerAsn;
  /// The type of the ExpressRoute Circuit Peering.
  final String? peeringType;
  /// The primary port used by Azure for this peering.
  final String? primaryAzurePort;
  /// The primary peer address prefix.
  final String? primaryPeerAddressPrefix;
  final String? resourceGroupName;
  final String? routeFilterId;
  /// The secondary port used by Azure for this peering.
  final String? secondaryAzurePort;
  /// The secondary peer address prefix.
  final String? secondaryPeerAddressPrefix;
  final String? sharedKey;
  /// The VLAN ID used for this peering.
  final int? vlanId;

  /// Creates a new [GetCircuitPeeringResult].
  /// [azureAsn] The ASN used by Azure for the peering.
  /// [expressRouteCircuitName] Optional.
  /// [gatewayManagerEtag] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipv4Enabled] Indicates if IPv4 is enabled.
  /// [peerAsn] Optional.
  /// [peeringType] The type of the ExpressRoute Circuit Peering.
  /// [primaryAzurePort] The primary port used by Azure for this peering.
  /// [primaryPeerAddressPrefix] The primary peer address prefix.
  /// [resourceGroupName] Optional.
  /// [routeFilterId] Optional.
  /// [secondaryAzurePort] The secondary port used by Azure for this peering.
  /// [secondaryPeerAddressPrefix] The secondary peer address prefix.
  /// [sharedKey] Optional.
  /// [vlanId] The VLAN ID used for this peering.
  const GetCircuitPeeringResult({
    this.azureAsn,
    this.expressRouteCircuitName,
    this.gatewayManagerEtag,
    this.id,
    this.ipv4Enabled,
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
      'id': ?id,
      'ipv4Enabled': ?ipv4Enabled,
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

  factory GetCircuitPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetCircuitPeeringResult(
      azureAsn: (() { final guardedValue = map['azureAsn']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      expressRouteCircuitName: (() { final guardedValue = map['expressRouteCircuitName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayManagerEtag: (() { final guardedValue = map['gatewayManagerEtag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4Enabled: (() { final guardedValue = map['ipv4Enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      peeringType: (() { final guardedValue = map['peeringType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryAzurePort: (() { final guardedValue = map['primaryAzurePort']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryPeerAddressPrefix: (() { final guardedValue = map['primaryPeerAddressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeFilterId: (() { final guardedValue = map['routeFilterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryAzurePort: (() { final guardedValue = map['secondaryAzurePort']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryPeerAddressPrefix: (() { final guardedValue = map['secondaryPeerAddressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
