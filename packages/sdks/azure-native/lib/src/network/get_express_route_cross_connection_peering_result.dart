// ignore_for_file: unused_element, unnecessary_cast

import 'express_route_circuit_peering_config_response.dart';
import 'ipv6_express_route_circuit_peering_config_response.dart';

/// Result data returned by getExpressRouteCrossConnectionPeering.
class GetExpressRouteCrossConnectionPeeringResult {
  /// The Azure ASN.
  final int azureASN;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The GatewayManager Etag.
  final String? gatewayManagerEtag;
  /// Resource ID.
  final String? id;
  /// The IPv6 peering configuration.
  final Ipv6ExpressRouteCircuitPeeringConfigResponse? ipv6PeeringConfig;
  /// Who was the last to modify the peering.
  final String lastModifiedBy;
  /// The Microsoft peering configuration.
  final ExpressRouteCircuitPeeringConfigResponse? microsoftPeeringConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The peer ASN.
  final double? peerASN;
  /// The peering type.
  final String? peeringType;
  /// The primary port.
  final String primaryAzurePort;
  /// The primary address prefix.
  final String? primaryPeerAddressPrefix;
  /// The provisioning state of the express route cross connection peering resource.
  final String provisioningState;
  /// The secondary port.
  final String secondaryAzurePort;
  /// The secondary address prefix.
  final String? secondaryPeerAddressPrefix;
  /// The shared key.
  final String? sharedKey;
  /// The peering state.
  final String? state;
  /// The VLAN ID.
  final int? vlanId;

  /// Creates a new [GetExpressRouteCrossConnectionPeeringResult].
  /// [azureASN] The Azure ASN.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [gatewayManagerEtag] The GatewayManager Etag.
  /// [id] Resource ID.
  /// [ipv6PeeringConfig] The IPv6 peering configuration.
  /// [lastModifiedBy] Who was the last to modify the peering.
  /// [microsoftPeeringConfig] The Microsoft peering configuration.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerASN] The peer ASN.
  /// [peeringType] The peering type.
  /// [primaryAzurePort] The primary port.
  /// [primaryPeerAddressPrefix] The primary address prefix.
  /// [provisioningState] The provisioning state of the express route cross connection peering resource.
  /// [secondaryAzurePort] The secondary port.
  /// [secondaryPeerAddressPrefix] The secondary address prefix.
  /// [sharedKey] The shared key.
  /// [state] The peering state.
  /// [vlanId] The VLAN ID.
  GetExpressRouteCrossConnectionPeeringResult({
    required this.azureASN,
    required this.azureApiVersion,
    required this.etag,
    this.gatewayManagerEtag,
    this.id,
    this.ipv6PeeringConfig,
    required this.lastModifiedBy,
    this.microsoftPeeringConfig,
    this.name,
    this.peerASN,
    this.peeringType,
    required this.primaryAzurePort,
    this.primaryPeerAddressPrefix,
    required this.provisioningState,
    required this.secondaryAzurePort,
    this.secondaryPeerAddressPrefix,
    this.sharedKey,
    this.state,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureASN': azureASN,
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'id': ?id,
      'ipv6PeeringConfig': ?ipv6PeeringConfig?.toMap(),
      'lastModifiedBy': lastModifiedBy,
      'microsoftPeeringConfig': ?microsoftPeeringConfig?.toMap(),
      'name': ?name,
      'peerASN': ?peerASN,
      'peeringType': ?peeringType,
      'primaryAzurePort': primaryAzurePort,
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'provisioningState': provisioningState,
      'secondaryAzurePort': secondaryAzurePort,
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'sharedKey': ?sharedKey,
      'state': ?state,
      'vlanId': ?vlanId,
    };
  }

  factory GetExpressRouteCrossConnectionPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCrossConnectionPeeringResult(
      azureASN: map['azureASN'] as int,
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      gatewayManagerEtag: (() { final guardedValue = map['gatewayManagerEtag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6PeeringConfig: (() { final guardedValue = map['ipv6PeeringConfig']; if (guardedValue == null) return null; return Ipv6ExpressRouteCircuitPeeringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastModifiedBy: map['lastModifiedBy'] as String,
      microsoftPeeringConfig: (() { final guardedValue = map['microsoftPeeringConfig']; if (guardedValue == null) return null; return ExpressRouteCircuitPeeringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerASN: (() { final guardedValue = map['peerASN']; if (guardedValue == null) return null; return guardedValue as double; })(),
      peeringType: (() { final guardedValue = map['peeringType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryAzurePort: map['primaryAzurePort'] as String,
      primaryPeerAddressPrefix: (() { final guardedValue = map['primaryPeerAddressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      secondaryAzurePort: map['secondaryAzurePort'] as String,
      secondaryPeerAddressPrefix: (() { final guardedValue = map['secondaryPeerAddressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

