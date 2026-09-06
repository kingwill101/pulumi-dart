// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_response.dart';

/// VirtualHub route table.
class VirtualHubRouteTableResponse {
  /// List of all routes.
  final pulumi.Input<List<VirtualHubRouteResponse>?>? routes;

  /// Creates a new [VirtualHubRouteTableResponse].
  /// [routes] List of all routes.
  const VirtualHubRouteTableResponse({
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualHubRouteResponse>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualHubRouteResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualHubRouteTableResponse.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableResponse(
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualHubRouteResponse>(guardedValue, (value) => VirtualHubRouteResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
