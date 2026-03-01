// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_response.dart';

/// Result data returned by getVirtualNetworkGatewayAdvertisedRoutes.
class GetVirtualNetworkGatewayAdvertisedRoutesResult {
  /// List of gateway routes.
  final List<GatewayRouteResponse>? value;

  /// Creates a new [GetVirtualNetworkGatewayAdvertisedRoutesResult].
  /// [value] List of gateway routes.
  GetVirtualNetworkGatewayAdvertisedRoutesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : pulumi.Input.encodeList<GatewayRouteResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory GetVirtualNetworkGatewayAdvertisedRoutesResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayAdvertisedRoutesResult(
      value: map['value'] == null ? null : pulumi.Input.decodeList<GatewayRouteResponse>(map['value'], (value) => GatewayRouteResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

