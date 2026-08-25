// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_status_best_route.dart';
import 'get_router_status_best_routes_for_router.dart';

/// Result data returned by getRouterStatus.
class GetRouterStatusResult {
  /// List of best `compute#routes` configurations for this router's network. See gcp.compute.Route resource for available attributes.
  final List<GetRouterStatusBestRoute>? bestRoutes;
  /// List of best `compute#routes` for this specific router. See gcp.compute.Route resource for available attributes.
  final List<GetRouterStatusBestRoutesForRouter>? bestRoutesForRouters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The network name or resource link to the parent
  /// network of this subnetwork.
  final String? network;
  final String? project;
  final String? region;

  /// Creates a new [GetRouterStatusResult].
  /// [bestRoutes] List of best `compute#routes` configurations for this router's network. See gcp.compute.Route resource for available attributes.
  /// [bestRoutesForRouters] List of best `compute#routes` for this specific router. See gcp.compute.Route resource for available attributes.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [network] The network name or resource link to the parent
  /// [project] Optional.
  /// [region] Optional.
  const GetRouterStatusResult({
    this.bestRoutes,
    this.bestRoutesForRouters,
    this.id,
    this.name,
    this.network,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bestRoutes': ?(() { final guardedValue = bestRoutes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouterStatusBestRoute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'bestRoutesForRouters': ?(() { final guardedValue = bestRoutesForRouters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouterStatusBestRoutesForRouter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetRouterStatusResult.fromMap(Map<String, dynamic> map) {
    return GetRouterStatusResult(
      bestRoutes: (() { final guardedValue = map['bestRoutes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouterStatusBestRoute>(guardedValue, (value) => GetRouterStatusBestRoute.fromMap((value as Map).cast<String, dynamic>())); })(),
      bestRoutesForRouters: (() { final guardedValue = map['bestRoutesForRouters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouterStatusBestRoutesForRouter>(guardedValue, (value) => GetRouterStatusBestRoutesForRouter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
