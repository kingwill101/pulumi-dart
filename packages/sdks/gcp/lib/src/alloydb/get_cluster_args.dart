// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_get_cluster_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_alloydb_get_cluster_get_cluster_args_doc}
class GetClusterArgs {
  /// The ID of the alloydb cluster that the instance belongs to.
  /// 'alloydb_cluster_id'
  final pulumi.Input<String> clusterId;
  /// (optional)
  /// The canonical id of the location.If it is not provided, the provider project is used. For example: us-east1.
  final pulumi.Input<String>? location;
  /// (optional)
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetClusterArgs].
  /// [clusterId] The ID of the alloydb cluster that the instance belongs to.
  /// [location] (optional)
  /// [project] (optional)
  GetClusterArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

