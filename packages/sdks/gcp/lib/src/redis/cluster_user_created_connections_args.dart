// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_user_created_connections_cluster_endpoint.dart';

/// {@template pulumi_redis_cluster_user_created_connections_cluster_user_created_connections_args_doc}
/// The set of arguments for ClusterUserCreatedConnections.
/// {@endtemplate}
/// {@macro pulumi_redis_cluster_user_created_connections_cluster_user_created_connections_args_doc}
class ClusterUserCreatedConnectionsArgs {
  /// A list of cluster endpoints
  /// Structure is documented below.
  final pulumi.Input<List<ClusterUserCreatedConnectionsClusterEndpoint>>? clusterEndpoints;
  /// The name of the Redis cluster these endpoints should be added to.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the region of the Redis cluster these endpoints should be added to.
  final pulumi.Input<String> region;

  /// Creates a new [ClusterUserCreatedConnectionsArgs].
  /// [clusterEndpoints] A list of cluster endpoints
  /// [name] The name of the Redis cluster these endpoints should be added to.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The name of the region of the Redis cluster these endpoints should be added to.
  ClusterUserCreatedConnectionsArgs({
    this.clusterEndpoints,
    this.name,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ClusterUserCreatedConnectionsClusterEndpoint>, List<Map<String, dynamic>>>(clusterEndpoints, (value) => pulumi.Input.encodeList<ClusterUserCreatedConnectionsClusterEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'region': region,
    };
  }

  factory ClusterUserCreatedConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return ClusterUserCreatedConnectionsArgs(
      clusterEndpoints: (() { final guardedValue = map['clusterEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterUserCreatedConnectionsClusterEndpoint>(guardedValue, (value) => ClusterUserCreatedConnectionsClusterEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

