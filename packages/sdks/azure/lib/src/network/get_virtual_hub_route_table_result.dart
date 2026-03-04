// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_hub_route_table_route.dart';

/// Result data returned by getVirtualHubRouteTable.
class GetVirtualHubRouteTableResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of labels associated with this route table.
  final List<String> labels;

  /// The name which is used for this route.
  final String name;
  final String resourceGroupName;

  /// A `route` block as defined below.
  final List<GetVirtualHubRouteTableRoute> routes;

  /// The ID of the Virtual Hub within which this route table is created
  final String virtualHubId;
  final String virtualHubName;

  /// Creates a new [GetVirtualHubRouteTableResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] List of labels associated with this route table.
  /// [name] The name which is used for this route.
  /// [resourceGroupName] Required.
  /// [routes] A `route` block as defined below.
  /// [virtualHubId] The ID of the Virtual Hub within which this route table is created
  /// [virtualHubName] Required.
  GetVirtualHubRouteTableResult({
    required this.id,
    required this.labels,
    required this.name,
    required this.resourceGroupName,
    required this.routes,
    required this.virtualHubId,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'labels': labels,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'routes':
          pulumi.Input.encodeList<
            GetVirtualHubRouteTableRoute,
            Map<String, dynamic>
          >(routes, (value) => value.toMap()),
      'virtualHubId': virtualHubId,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetVirtualHubRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubRouteTableResult(
      id: map['id'] as String,
      labels: (map['labels'] as List).cast<String>(),
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routes: pulumi.Input.decodeList<GetVirtualHubRouteTableRoute>(
        map['routes']!,
        (value) => GetVirtualHubRouteTableRoute.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      virtualHubId: map['virtualHubId'] as String,
      virtualHubName: map['virtualHubName'] as String,
    );
  }
}
