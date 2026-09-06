// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_response.dart';
import 'subnet_response.dart';

/// Result data returned by getRouteTable.
class GetRouteTableResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Whether to disable the routes learned by BGP on that route table. True means disable.
  final bool? disableBgpRoutePropagation;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The provisioning state of the route table resource.
  final String? provisioningState;
  /// The resource GUID property of the route table.
  final String? resourceGuid;
  /// Collection of routes contained within a route table.
  final List<RouteResponse>? routes;
  /// A collection of references to subnets.
  final List<SubnetResponse>? subnets;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetRouteTableResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disableBgpRoutePropagation] Whether to disable the routes learned by BGP on that route table. True means disable.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the route table resource.
  /// [resourceGuid] The resource GUID property of the route table.
  /// [routes] Collection of routes contained within a route table.
  /// [subnets] A collection of references to subnets.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetRouteTableResult({
    this.azureApiVersion,
    this.disableBgpRoutePropagation,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.resourceGuid,
    this.routes,
    this.subnets,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'disableBgpRoutePropagation': ?disableBgpRoutePropagation,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'routes': ?(() { final guardedValue = routes; if (guardedValue == null) return null; return pulumi.Input.encodeList<RouteResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subnets': ?(() { final guardedValue = subnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableBgpRoutePropagation: (() { final guardedValue = map['disableBgpRoutePropagation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteResponse>(guardedValue, (value) => RouteResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubnetResponse>(guardedValue, (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
