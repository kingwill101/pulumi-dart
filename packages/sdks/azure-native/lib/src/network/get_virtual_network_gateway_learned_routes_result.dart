// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_response.dart';

/// Result data returned by getVirtualNetworkGatewayLearnedRoutes.
class GetVirtualNetworkGatewayLearnedRoutesResult {
  /// List of gateway routes.
  final List<GatewayRouteResponse>? value;

  /// Creates a new [GetVirtualNetworkGatewayLearnedRoutesResult].
  /// [value] List of gateway routes.
  GetVirtualNetworkGatewayLearnedRoutesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<GatewayRouteResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVirtualNetworkGatewayLearnedRoutesResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayLearnedRoutesResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GatewayRouteResponse>(guardedValue, (value) => GatewayRouteResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

