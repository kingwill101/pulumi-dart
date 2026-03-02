// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1alpha_get_cluster_alloydb_v1alpha_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1alpha_get_cluster_alloydb_v1alpha_args_doc}
class GetClusterAlloydbV1alphaArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetClusterAlloydbV1alphaArgs].
  /// [clusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetClusterAlloydbV1alphaArgs({
    required this.clusterId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetClusterAlloydbV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterAlloydbV1alphaArgs(
      clusterId: (map['clusterId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      view: map['view'] == null ? null : (map['view'] as String).input(),
    );
  }
}

