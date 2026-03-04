// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_status_best_route.dart';
import 'get_router_status_best_routes_for_router.dart';

/// Result data returned by getRouterStatus.
class GetRouterStatusResult {
  /// List of best `compute#routes` configurations for this router's network. See gcp.compute.Route resource for available attributes.
  final List<GetRouterStatusBestRoute> bestRoutes;

  /// List of best `compute#routes` for this specific router. See gcp.compute.Route resource for available attributes.
  final List<GetRouterStatusBestRoutesForRouter> bestRoutesForRouters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// The network name or resource link to the parent
  /// network of this subnetwork.
  final String network;
  final String? project;
  final String region;

  /// Creates a new [GetRouterStatusResult].
  /// [bestRoutes] List of best `compute#routes` configurations for this router's network. See gcp.compute.Route resource for available attributes.
  /// [bestRoutesForRouters] List of best `compute#routes` for this specific router. See gcp.compute.Route resource for available attributes.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [network] The network name or resource link to the parent
  /// [project] Optional.
  /// [region] Required.
  GetRouterStatusResult({
    required this.bestRoutes,
    required this.bestRoutesForRouters,
    required this.id,
    required this.name,
    required this.network,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bestRoutes':
          pulumi.Input.encodeList<
            GetRouterStatusBestRoute,
            Map<String, dynamic>
          >(bestRoutes, (value) => value.toMap()),
      'bestRoutesForRouters':
          pulumi.Input.encodeList<
            GetRouterStatusBestRoutesForRouter,
            Map<String, dynamic>
          >(bestRoutesForRouters, (value) => value.toMap()),
      'id': id,
      'name': name,
      'network': network,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRouterStatusResult.fromMap(Map<String, dynamic> map) {
    return GetRouterStatusResult(
      bestRoutes: pulumi.Input.decodeList<GetRouterStatusBestRoute>(
        map['bestRoutes']!,
        (value) => GetRouterStatusBestRoute.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      bestRoutesForRouters:
          pulumi.Input.decodeList<GetRouterStatusBestRoutesForRouter>(
            map['bestRoutesForRouters']!,
            (value) => GetRouterStatusBestRoutesForRouter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: map['region'] as String,
    );
  }
}
