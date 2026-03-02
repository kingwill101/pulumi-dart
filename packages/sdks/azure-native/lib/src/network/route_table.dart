// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route.dart';

/// Route table resource.
class RouteTable {
  /// Whether to disable the routes learned by BGP on that route table. True means disable.
  final pulumi.Input<bool>? disableBgpRoutePropagation;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String>? provisioningState;
  /// Collection of routes contained within a route table.
  final pulumi.Input<List<Route>>? routes;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RouteTable].
  /// [disableBgpRoutePropagation] Whether to disable the routes learned by BGP on that route table. True means disable.
  /// [etag] Gets a unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [provisioningState] The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [routes] Collection of routes contained within a route table.
  /// [tags] Resource tags.
  RouteTable({
    this.disableBgpRoutePropagation,
    this.etag,
    this.id,
    this.location,
    this.provisioningState,
    this.routes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableBgpRoutePropagation': ?disableBgpRoutePropagation,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'provisioningState': ?provisioningState,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<Route>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<Route, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory RouteTable.fromMap(Map<String, dynamic> map) {
    return RouteTable(
      disableBgpRoutePropagation: map['disableBgpRoutePropagation'] == null ? null : (map['disableBgpRoutePropagation'] as bool).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<Route>(map['routes'], (value) => Route.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

