// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'circuit_metadata_map_response.dart';
import 'gateway_route_set_response.dart';

/// Result data returned by getVirtualNetworkGatewayRoutesInformation.
class GetVirtualNetworkGatewayRoutesInformationResult {
  /// Dictionary containing map of the circuit id and circuit details
  final Map<String, CircuitMetadataMapResponse>? circuitsMetadataMap;
  /// Timestamp denoting the last time when the route sets were computed for the gateway
  final String? lastComputedTime;
  /// Timestamp denoting the next eligible time to re-compute the route sets for the gateway
  final String? nextEligibleComputeTime;
  /// Version for the route set
  final String? routeSetVersion;
  /// List of Gateway Route Sets
  final List<GatewayRouteSetResponse>? routeSets;

  /// Creates a new [GetVirtualNetworkGatewayRoutesInformationResult].
  /// [circuitsMetadataMap] Dictionary containing map of the circuit id and circuit details
  /// [lastComputedTime] Timestamp denoting the last time when the route sets were computed for the gateway
  /// [nextEligibleComputeTime] Timestamp denoting the next eligible time to re-compute the route sets for the gateway
  /// [routeSetVersion] Version for the route set
  /// [routeSets] List of Gateway Route Sets
  const GetVirtualNetworkGatewayRoutesInformationResult({
    this.circuitsMetadataMap,
    this.lastComputedTime,
    this.nextEligibleComputeTime,
    this.routeSetVersion,
    this.routeSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuitsMetadataMap': ?(() { final guardedValue = circuitsMetadataMap; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<CircuitMetadataMapResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'lastComputedTime': ?lastComputedTime,
      'nextEligibleComputeTime': ?nextEligibleComputeTime,
      'routeSetVersion': ?routeSetVersion,
      'routeSets': ?(() { final guardedValue = routeSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GatewayRouteSetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVirtualNetworkGatewayRoutesInformationResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayRoutesInformationResult(
      circuitsMetadataMap: (() { final guardedValue = map['circuitsMetadataMap']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<CircuitMetadataMapResponse>(guardedValue, (value) => CircuitMetadataMapResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      lastComputedTime: (() { final guardedValue = map['lastComputedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nextEligibleComputeTime: (() { final guardedValue = map['nextEligibleComputeTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeSetVersion: (() { final guardedValue = map['routeSetVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeSets: (() { final guardedValue = map['routeSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GatewayRouteSetResponse>(guardedValue, (value) => GatewayRouteSetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
