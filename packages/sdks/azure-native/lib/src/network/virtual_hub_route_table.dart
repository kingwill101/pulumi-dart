// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route.dart';

/// VirtualHub route table.
class VirtualHubRouteTable {
  /// List of all routes.
  final pulumi.Input<List<VirtualHubRoute>>? routes;

  /// Creates a new [VirtualHubRouteTable].
  /// [routes] List of all routes.
  VirtualHubRouteTable({
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualHubRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualHubRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualHubRouteTable.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTable(
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualHubRoute>(guardedValue, (value) => VirtualHubRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

