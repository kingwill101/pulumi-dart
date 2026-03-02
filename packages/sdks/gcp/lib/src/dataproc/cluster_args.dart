// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config.dart';
import 'cluster_virtual_cluster_config.dart';

/// {@template pulumi_dataproc_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_dataproc_cluster_cluster_args_doc}
class ClusterArgs {
  /// Allows you to configure various aspects of the cluster.
  /// Structure defined below.
  final pulumi.Input<ClusterClusterConfig>? clusterConfig;
  final pulumi.Input<String>? gracefulDecommissionTimeout;
  /// The list of the labels (key/value pairs) configured on the resource and to be applied to instances in the cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the cluster, unique within the project and
  /// zone.
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// The ID of the project in which the `cluster` will exist. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region in which the cluster and associated nodes will be created in.
  /// Defaults to `global`.
  final pulumi.Input<String>? region;
  /// Allows you to configure a virtual Dataproc on GKE cluster.
  /// Structure defined below.
  final pulumi.Input<ClusterVirtualClusterConfig>? virtualClusterConfig;

  /// Creates a new [ClusterArgs].
  /// [clusterConfig] Allows you to configure various aspects of the cluster.
  /// [gracefulDecommissionTimeout] Optional.
  /// [labels] The list of the labels (key/value pairs) configured on the resource and to be applied to instances in the cluster.
  /// [name] The name of the cluster, unique within the project and
  /// [project] The ID of the project in which the `cluster` will exist. If it
  /// [region] The region in which the cluster and associated nodes will be created in.
  /// [virtualClusterConfig] Allows you to configure a virtual Dataproc on GKE cluster.
  ClusterArgs({
    this.clusterConfig,
    this.gracefulDecommissionTimeout,
    this.labels,
    this.name,
    this.project,
    this.region,
    this.virtualClusterConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfig, Map<String, dynamic>>(clusterConfig, (value) => value.toMap()),
      'gracefulDecommissionTimeout': ?gracefulDecommissionTimeout,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'virtualClusterConfig': ?pulumi.Input.mapOptionalInputValue<ClusterVirtualClusterConfig, Map<String, dynamic>>(virtualClusterConfig, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      clusterConfig: map['clusterConfig'] == null ? null : (ClusterClusterConfig.fromMap((map['clusterConfig']! as Map).cast<String, dynamic>())).input(),
      gracefulDecommissionTimeout: map['gracefulDecommissionTimeout'] == null ? null : (map['gracefulDecommissionTimeout']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      virtualClusterConfig: map['virtualClusterConfig'] == null ? null : (ClusterVirtualClusterConfig.fromMap((map['virtualClusterConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

