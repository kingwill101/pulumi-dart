// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_table_route.dart';

/// Input properties used for looking up and filtering VirtualHubRouteTable resources.
class VirtualHubRouteTableState {
  /// List of labels associated with this route table.
  final pulumi.Input<List<String>>? labels;
  /// The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `route` blocks as defined below.
  final pulumi.Input<List<VirtualHubRouteTableRoute>>? routes;
  /// The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualHubId;

  /// Creates a new [VirtualHubRouteTableState].
  /// [labels] List of labels associated with this route table.
  /// [name] The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created.
  /// [routes] One or more `route` blocks as defined below.
  /// [virtualHubId] The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created.
  const VirtualHubRouteTableState({
    this.labels,
    this.name,
    this.routes,
    this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'name': ?name,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualHubRouteTableRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualHubRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualHubId': ?virtualHubId,
    };
  }

  factory VirtualHubRouteTableState.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableState(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualHubRouteTableRoute>(guardedValue, (value) => VirtualHubRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualHubId: (() { final guardedValue = map['virtualHubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

