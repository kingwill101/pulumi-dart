// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_cluster_token_auth_user_cluster_token_auth_user_args_doc}
/// The set of arguments for ClusterTokenAuthUser.
/// {@endtemplate}
/// {@macro pulumi_redis_cluster_token_auth_user_cluster_token_auth_user_args_doc}
class ClusterTokenAuthUserArgs {
  /// The name or resource ID of the Redis cluster.
  final pulumi.Input<String> cluster;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The name of the region of the Redis cluster.
  final pulumi.Input<String?>? region;
  /// The unique ID (username) of the Token Auth User.
  /// The `default` user cannot be managed with this resource.
  final pulumi.Input<String> userId;

  /// Creates a new [ClusterTokenAuthUserArgs].
  /// [cluster] The name or resource ID of the Redis cluster.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The name of the region of the Redis cluster.
  /// [userId] The unique ID (username) of the Token Auth User.
  const ClusterTokenAuthUserArgs({
    required this.cluster,
    this.deletionPolicy,
    this.project,
    this.region,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'deletionPolicy': ?deletionPolicy,
      'project': ?project,
      'region': ?region,
      'userId': userId,
    };
  }

  factory ClusterTokenAuthUserArgs.fromMap(Map<String, dynamic> map) {
    return ClusterTokenAuthUserArgs(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
