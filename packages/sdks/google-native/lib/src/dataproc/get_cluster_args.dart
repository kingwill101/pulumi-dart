// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_cluster_args_doc}
class GetClusterArgs {
  final pulumi.Input<String> clusterName;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetClusterArgs].
  /// [clusterName] Required.
  /// [project] Optional.
  /// [region] Required.
  GetClusterArgs({
    required this.clusterName,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'project': ?project,
      'region': region,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      clusterName: (map['clusterName'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

