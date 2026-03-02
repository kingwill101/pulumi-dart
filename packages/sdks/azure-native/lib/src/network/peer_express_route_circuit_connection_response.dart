// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Peer Express Route Circuit Connection in an ExpressRouteCircuitPeering resource.
class PeerExpressRouteCircuitConnectionResponse {
  /// /29 IP address space to carve out Customer addresses for tunnels.
  final pulumi.Input<String>? addressPrefix;
  /// The resource guid of the authorization used for the express route circuit connection.
  final pulumi.Input<String>? authResourceGuid;
  /// Express Route Circuit connection state.
  final pulumi.Input<String> circuitConnectionStatus;
  /// The name of the express route circuit connection resource.
  final pulumi.Input<String>? connectionName;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Reference to Express Route Circuit Private Peering Resource of the circuit.
  final pulumi.Input<SubResourceResponse>? expressRouteCircuitPeering;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  final pulumi.Input<SubResourceResponse>? peerExpressRouteCircuitPeering;
  /// The provisioning state of the peer express route circuit connection resource.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [PeerExpressRouteCircuitConnectionResponse].
  /// [addressPrefix] /29 IP address space to carve out Customer addresses for tunnels.
  /// [authResourceGuid] The resource guid of the authorization used for the express route circuit connection.
  /// [circuitConnectionStatus] Express Route Circuit connection state.
  /// [connectionName] The name of the express route circuit connection resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [expressRouteCircuitPeering] Reference to Express Route Circuit Private Peering Resource of the circuit.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerExpressRouteCircuitPeering] Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  /// [provisioningState] The provisioning state of the peer express route circuit connection resource.
  /// [type] Type of the resource.
  PeerExpressRouteCircuitConnectionResponse({
    this.addressPrefix,
    this.authResourceGuid,
    required this.circuitConnectionStatus,
    this.connectionName,
    required this.etag,
    this.expressRouteCircuitPeering,
    this.id,
    this.name,
    this.peerExpressRouteCircuitPeering,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'authResourceGuid': ?authResourceGuid,
      'circuitConnectionStatus': circuitConnectionStatus,
      'connectionName': ?connectionName,
      'etag': etag,
      'expressRouteCircuitPeering': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(expressRouteCircuitPeering, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'peerExpressRouteCircuitPeering': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(peerExpressRouteCircuitPeering, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory PeerExpressRouteCircuitConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PeerExpressRouteCircuitConnectionResponse(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix'] as String).input(),
      authResourceGuid: map['authResourceGuid'] == null ? null : (map['authResourceGuid'] as String).input(),
      circuitConnectionStatus: (map['circuitConnectionStatus'] as String).input(),
      connectionName: map['connectionName'] == null ? null : (map['connectionName'] as String).input(),
      etag: (map['etag'] as String).input(),
      expressRouteCircuitPeering: map['expressRouteCircuitPeering'] == null ? null : (SubResourceResponse.fromMap((map['expressRouteCircuitPeering'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      peerExpressRouteCircuitPeering: map['peerExpressRouteCircuitPeering'] == null ? null : (SubResourceResponse.fromMap((map['peerExpressRouteCircuitPeering'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

