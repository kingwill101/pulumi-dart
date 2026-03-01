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
    pulumi.Output<ClusterClusterConfig>? clusterConfig,
    pulumi.Output<String>? gracefulDecommissionTimeout,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<ClusterVirtualClusterConfig>? virtualClusterConfig,
  }) :
      clusterConfig = pulumi.Input.asOptionalInput<ClusterClusterConfig>(clusterConfig),
      gracefulDecommissionTimeout = pulumi.Input.asOptionalInput<String>(gracefulDecommissionTimeout),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      virtualClusterConfig = pulumi.Input.asOptionalInput<ClusterVirtualClusterConfig>(virtualClusterConfig);

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
      clusterConfig: map['clusterConfig'] == null ? null : pulumi.Output.create<ClusterClusterConfig>(ClusterClusterConfig.fromMap((map['clusterConfig'] as Map).cast<String, dynamic>())),
      gracefulDecommissionTimeout: map['gracefulDecommissionTimeout'] == null ? null : pulumi.Output.create<String>(map['gracefulDecommissionTimeout'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      virtualClusterConfig: map['virtualClusterConfig'] == null ? null : pulumi.Output.create<ClusterVirtualClusterConfig>(ClusterVirtualClusterConfig.fromMap((map['virtualClusterConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

