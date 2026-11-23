// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_cluster_token_auth_user_get_cluster_token_auth_user_args_doc}
/// Arguments for getClusterTokenAuthUser.
/// {@endtemplate}
/// {@macro pulumi_redis_get_cluster_token_auth_user_get_cluster_token_auth_user_args_doc}
class GetClusterTokenAuthUserArgs {
  /// The name or resource ID of the Redis Cluster.
  final pulumi.Input<String> cluster;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region in which the cluster belongs. If it is not provided, the provider region is used.
  final pulumi.Input<String?>? region;
  /// The unique ID of the token auth user. Can also be set to `"default"` to inspect the cluster's built-in default user.
  final pulumi.Input<String> userId;

  /// Creates a new [GetClusterTokenAuthUserArgs].
  /// [cluster] The name or resource ID of the Redis Cluster.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [region] The region in which the cluster belongs. If it is not provided, the provider region is used.
  /// [userId] The unique ID of the token auth user. Can also be set to `"default"` to inspect the cluster's built-in default user.
  const GetClusterTokenAuthUserArgs({
    required this.cluster,
    this.project,
    this.region,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'project': ?project,
      'region': ?region,
      'userId': userId,
    };
  }

  factory GetClusterTokenAuthUserArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterTokenAuthUserArgs(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
