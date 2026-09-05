// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_hub_route_table_route.dart';

/// Result data returned by getVirtualHubRouteTable.
class GetVirtualHubRouteTableResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of labels associated with this route table.
  final List<String>? labels;
  /// The name which is used for this route.
  final String? name;
  final String? resourceGroupName;
  /// A `route` block as defined below.
  final List<GetVirtualHubRouteTableRoute>? routes;
  /// The ID of the Virtual Hub within which this route table is created
  final String? virtualHubId;
  final String? virtualHubName;

  /// Creates a new [GetVirtualHubRouteTableResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] List of labels associated with this route table.
  /// [name] The name which is used for this route.
  /// [resourceGroupName] Optional.
  /// [routes] A `route` block as defined below.
  /// [virtualHubId] The ID of the Virtual Hub within which this route table is created
  /// [virtualHubName] Optional.
  const GetVirtualHubRouteTableResult({
    this.id,
    this.labels,
    this.name,
    this.resourceGroupName,
    this.routes,
    this.virtualHubId,
    this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'routes': ?(() { final guardedValue = routes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualHubRouteTableRoute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'virtualHubId': ?virtualHubId,
      'virtualHubName': ?virtualHubName,
    };
  }

  factory GetVirtualHubRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubRouteTableResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualHubRouteTableRoute>(guardedValue, (value) => GetVirtualHubRouteTableRoute.fromMap((value as Map).cast<String, dynamic>())); })(),
      virtualHubId: (() { final guardedValue = map['virtualHubId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualHubName: (() { final guardedValue = map['virtualHubName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
