// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_v1beta1_get_cluster_redis_v1beta1_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_redis_v1beta1_get_cluster_redis_v1beta1_args_doc}
class GetClusterRedisV1beta1Args {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClusterRedisV1beta1Args].
  /// [clusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetClusterRedisV1beta1Args({
    required this.clusterId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetClusterRedisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetClusterRedisV1beta1Args(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

