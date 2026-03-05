// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_connection_response.dart';
import 'express_route_circuit_peering_config_response.dart';
import 'express_route_circuit_stats_response.dart';
import 'express_route_connection_id_response.dart';
import 'ipv6_express_route_circuit_peering_config_response.dart';
import 'peer_express_route_circuit_connection_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getExpressRouteCircuitPeering.
class GetExpressRouteCircuitPeeringResult {
  /// The Azure ASN.
  final int? azureASN;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The list of circuit connections associated with Azure Private Peering for this circuit.
  final List<ExpressRouteCircuitConnectionResponse>? connections;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The ExpressRoute connection.
  final ExpressRouteConnectionIdResponse? expressRouteConnection;
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
  /// The list of peered circuit connections associated with Azure Private Peering for this circuit.
  final List<PeerExpressRouteCircuitConnectionResponse> peeredConnections;
  /// The peering type.
  final String? peeringType;
  /// The primary port.
  final String? primaryAzurePort;
  /// The primary address prefix.
  final String? primaryPeerAddressPrefix;
  /// The provisioning state of the express route circuit peering resource.
  final String provisioningState;
  /// The reference to the RouteFilter resource.
  final SubResourceResponse? routeFilter;
  /// The secondary port.
  final String? secondaryAzurePort;
  /// The secondary address prefix.
  final String? secondaryPeerAddressPrefix;
  /// The shared key.
  final String? sharedKey;
  /// The peering state.
  final String? state;
  /// The peering stats of express route circuit.
  final ExpressRouteCircuitStatsResponse? stats;
  /// Type of the resource.
  final String type;
  /// The VLAN ID.
  final int? vlanId;

  /// Creates a new [GetExpressRouteCircuitPeeringResult].
  /// [azureASN] The Azure ASN.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connections] The list of circuit connections associated with Azure Private Peering for this circuit.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [expressRouteConnection] The ExpressRoute connection.
  /// [gatewayManagerEtag] The GatewayManager Etag.
  /// [id] Resource ID.
  /// [ipv6PeeringConfig] The IPv6 peering configuration.
  /// [lastModifiedBy] Who was the last to modify the peering.
  /// [microsoftPeeringConfig] The Microsoft peering configuration.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerASN] The peer ASN.
  /// [peeredConnections] The list of peered circuit connections associated with Azure Private Peering for this circuit.
  /// [peeringType] The peering type.
  /// [primaryAzurePort] The primary port.
  /// [primaryPeerAddressPrefix] The primary address prefix.
  /// [provisioningState] The provisioning state of the express route circuit peering resource.
  /// [routeFilter] The reference to the RouteFilter resource.
  /// [secondaryAzurePort] The secondary port.
  /// [secondaryPeerAddressPrefix] The secondary address prefix.
  /// [sharedKey] The shared key.
  /// [state] The peering state.
  /// [stats] The peering stats of express route circuit.
  /// [type] Type of the resource.
  /// [vlanId] The VLAN ID.
  GetExpressRouteCircuitPeeringResult({
    this.azureASN,
    required this.azureApiVersion,
    this.connections,
    required this.etag,
    this.expressRouteConnection,
    this.gatewayManagerEtag,
    this.id,
    this.ipv6PeeringConfig,
    required this.lastModifiedBy,
    this.microsoftPeeringConfig,
    this.name,
    this.peerASN,
    required this.peeredConnections,
    this.peeringType,
    this.primaryAzurePort,
    this.primaryPeerAddressPrefix,
    required this.provisioningState,
    this.routeFilter,
    this.secondaryAzurePort,
    this.secondaryPeerAddressPrefix,
    this.sharedKey,
    this.state,
    this.stats,
    required this.type,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureASN': ?azureASN,
      'azureApiVersion': azureApiVersion,
      'connections': ?(() { final guardedValue = connections; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExpressRouteCircuitConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': etag,
      'expressRouteConnection': ?expressRouteConnection?.toMap(),
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'id': ?id,
      'ipv6PeeringConfig': ?ipv6PeeringConfig?.toMap(),
      'lastModifiedBy': lastModifiedBy,
      'microsoftPeeringConfig': ?microsoftPeeringConfig?.toMap(),
      'name': ?name,
      'peerASN': ?peerASN,
      'peeredConnections': pulumi.Input.encodeList<PeerExpressRouteCircuitConnectionResponse, Map<String, dynamic>>(peeredConnections, (value) => value.toMap()),
      'peeringType': ?peeringType,
      'primaryAzurePort': ?primaryAzurePort,
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'provisioningState': provisioningState,
      'routeFilter': ?routeFilter?.toMap(),
      'secondaryAzurePort': ?secondaryAzurePort,
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'sharedKey': ?sharedKey,
      'state': ?state,
      'stats': ?stats?.toMap(),
      'type': type,
      'vlanId': ?vlanId,
    };
  }

  factory GetExpressRouteCircuitPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitPeeringResult(
      azureASN: (() { final guardedValue = map['azureASN']; if (guardedValue == null) return null; return guardedValue as int; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteCircuitConnectionResponse>(guardedValue, (value) => ExpressRouteCircuitConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: map['etag'] as String,
      expressRouteConnection: (() { final guardedValue = map['expressRouteConnection']; if (guardedValue == null) return null; return ExpressRouteConnectionIdResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gatewayManagerEtag: (() { final guardedValue = map['gatewayManagerEtag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6PeeringConfig: (() { final guardedValue = map['ipv6PeeringConfig']; if (guardedValue == null) return null; return Ipv6ExpressRouteCircuitPeeringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastModifiedBy: map['lastModifiedBy'] as String,
      microsoftPeeringConfig: (() { final guardedValue = map['microsoftPeeringConfig']; if (guardedValue == null) return null; return ExpressRouteCircuitPeeringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerASN: (() { final guardedValue = map['peerASN']; if (guardedValue == null) return null; return guardedValue as double; })(),
      peeredConnections: pulumi.Input.decodeList<PeerExpressRouteCircuitConnectionResponse>(map['peeredConnections']!, (value) => PeerExpressRouteCircuitConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      peeringType: (() { final guardedValue = map['peeringType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryAzurePort: (() { final guardedValue = map['primaryAzurePort']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryPeerAddressPrefix: (() { final guardedValue = map['primaryPeerAddressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      routeFilter: (() { final guardedValue = map['routeFilter']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      secondaryAzurePort: (() { final guardedValue = map['secondaryAzurePort']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryPeerAddressPrefix: (() { final guardedValue = map['secondaryPeerAddressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stats: (() { final guardedValue = map['stats']; if (guardedValue == null) return null; return ExpressRouteCircuitStatsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: map['type'] as String,
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

