// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_v1_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_redis_v1_get_cluster_args_doc}
class GetClusterArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClusterArgs].
  /// [clusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetClusterArgs({
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

