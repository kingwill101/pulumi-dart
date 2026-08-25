// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_status_best_route.dart';
import 'router_status_best_routes_for_router.dart';

/// Result data returned by routerStatus.
class RouterStatusResult {
  /// List of best `compute#routes` configurations for this router's network. See gcp.compute.Route resource for available attributes.
  final List<RouterStatusBestRoute>? bestRoutes;
  /// List of best `compute#routes` for this specific router. See gcp.compute.Route resource for available attributes.
  final List<RouterStatusBestRoutesForRouter>? bestRoutesForRouters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The network name or resource link to the parent
  /// network of this subnetwork.
  final String? network;
  final String? project;
  final String? region;

  /// Creates a new [RouterStatusResult].
  /// [bestRoutes] List of best `compute#routes` configurations for this router's network. See gcp.compute.Route resource for available attributes.
  /// [bestRoutesForRouters] List of best `compute#routes` for this specific router. See gcp.compute.Route resource for available attributes.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [network] The network name or resource link to the parent
  /// [project] Optional.
  /// [region] Optional.
  const RouterStatusResult({
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
      'bestRoutes': ?(() { final guardedValue = bestRoutes; if (guardedValue == null) return null; return pulumi.Input.encodeList<RouterStatusBestRoute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'bestRoutesForRouters': ?(() { final guardedValue = bestRoutesForRouters; if (guardedValue == null) return null; return pulumi.Input.encodeList<RouterStatusBestRoutesForRouter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'region': ?region,
    };
  }

  factory RouterStatusResult.fromMap(Map<String, dynamic> map) {
    return RouterStatusResult(
      bestRoutes: (() { final guardedValue = map['bestRoutes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterStatusBestRoute>(guardedValue, (value) => RouterStatusBestRoute.fromMap((value as Map).cast<String, dynamic>())); })(),
      bestRoutesForRouters: (() { final guardedValue = map['bestRoutesForRouters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouterStatusBestRoutesForRouter>(guardedValue, (value) => RouterStatusBestRoutesForRouter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
