// ignore_for_file: unused_element, unnecessary_cast

import 'ipv6_circuit_connection_config_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getExpressRouteCircuitConnection.
class GetExpressRouteCircuitConnectionResult {
  /// /29 IP address space to carve out Customer addresses for tunnels.
  final String? addressPrefix;
  /// The authorization key.
  final String? authorizationKey;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Express Route Circuit connection state.
  final String circuitConnectionStatus;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection.
  final SubResourceResponse? expressRouteCircuitPeering;
  /// Resource ID.
  final String? id;
  /// IPv6 Address PrefixProperties of the express route circuit connection.
  final Ipv6CircuitConnectionConfigResponse? ipv6CircuitConnectionConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  final SubResourceResponse? peerExpressRouteCircuitPeering;
  /// The provisioning state of the express route circuit connection resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetExpressRouteCircuitConnectionResult].
  /// [addressPrefix] /29 IP address space to carve out Customer addresses for tunnels.
  /// [authorizationKey] The authorization key.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [circuitConnectionStatus] Express Route Circuit connection state.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [expressRouteCircuitPeering] Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection.
  /// [id] Resource ID.
  /// [ipv6CircuitConnectionConfig] IPv6 Address PrefixProperties of the express route circuit connection.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerExpressRouteCircuitPeering] Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  /// [provisioningState] The provisioning state of the express route circuit connection resource.
  /// [type] Type of the resource.
  const GetExpressRouteCircuitConnectionResult({
    this.addressPrefix,
    this.authorizationKey,
    required this.azureApiVersion,
    required this.circuitConnectionStatus,
    required this.etag,
    this.expressRouteCircuitPeering,
    this.id,
    this.ipv6CircuitConnectionConfig,
    this.name,
    this.peerExpressRouteCircuitPeering,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'authorizationKey': ?authorizationKey,
      'azureApiVersion': azureApiVersion,
      'circuitConnectionStatus': circuitConnectionStatus,
      'etag': etag,
      'expressRouteCircuitPeering': ?expressRouteCircuitPeering?.toMap(),
      'id': ?id,
      'ipv6CircuitConnectionConfig': ?ipv6CircuitConnectionConfig?.toMap(),
      'name': ?name,
      'peerExpressRouteCircuitPeering': ?peerExpressRouteCircuitPeering?.toMap(),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetExpressRouteCircuitConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCircuitConnectionResult(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      circuitConnectionStatus: map['circuitConnectionStatus'] as String,
      etag: map['etag'] as String,
      expressRouteCircuitPeering: (() { final guardedValue = map['expressRouteCircuitPeering']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6CircuitConnectionConfig: (() { final guardedValue = map['ipv6CircuitConnectionConfig']; if (guardedValue == null) return null; return Ipv6CircuitConnectionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerExpressRouteCircuitPeering: (() { final guardedValue = map['peerExpressRouteCircuitPeering']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}
