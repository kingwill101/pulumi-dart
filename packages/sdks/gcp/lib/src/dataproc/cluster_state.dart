// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config.dart';
import 'cluster_virtual_cluster_config.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Allows you to configure various aspects of the cluster.
  /// Structure defined below.
  final pulumi.Input<ClusterClusterConfig>? clusterConfig;
  /// The list of labels (key/value pairs) to be applied to
  /// instances in the cluster. GCP generates some itself including `goog-dataproc-cluster-name`
  /// which is the name of the cluster.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region in which the cluster and associated nodes will be created in.
  /// Defaults to `global`.
  final pulumi.Input<String>? region;
  /// Allows you to configure a virtual Dataproc on GKE cluster.
  /// Structure defined below.
  final pulumi.Input<ClusterVirtualClusterConfig>? virtualClusterConfig;

  /// Creates a new [ClusterState].
  /// [clusterConfig] Allows you to configure various aspects of the cluster.
  /// [effectiveLabels] The list of labels (key/value pairs) to be applied to
  /// [gracefulDecommissionTimeout] Optional.
  /// [labels] The list of the labels (key/value pairs) configured on the resource and to be applied to instances in the cluster.
  /// [name] The name of the cluster, unique within the project and
  /// [project] The ID of the project in which the `cluster` will exist. If it
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [region] The region in which the cluster and associated nodes will be created in.
  /// [virtualClusterConfig] Allows you to configure a virtual Dataproc on GKE cluster.
  ClusterState({
    pulumi.Output<ClusterClusterConfig>? clusterConfig,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? gracefulDecommissionTimeout,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<ClusterVirtualClusterConfig>? virtualClusterConfig,
  }) :
      clusterConfig = pulumi.Input.asOptionalInput<ClusterClusterConfig>(clusterConfig),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      gracefulDecommissionTimeout = pulumi.Input.asOptionalInput<String>(gracefulDecommissionTimeout),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      virtualClusterConfig = pulumi.Input.asOptionalInput<ClusterVirtualClusterConfig>(virtualClusterConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfig, Map<String, dynamic>>(clusterConfig, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'gracefulDecommissionTimeout': ?gracefulDecommissionTimeout,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'virtualClusterConfig': ?pulumi.Input.mapOptionalInputValue<ClusterVirtualClusterConfig, Map<String, dynamic>>(virtualClusterConfig, (value) => value.toMap()),
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      clusterConfig: map['clusterConfig'] == null ? null : pulumi.Output.create<ClusterClusterConfig>(ClusterClusterConfig.fromMap((map['clusterConfig'] as Map).cast<String, dynamic>())),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      gracefulDecommissionTimeout: map['gracefulDecommissionTimeout'] == null ? null : pulumi.Output.create<String>(map['gracefulDecommissionTimeout'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      virtualClusterConfig: map['virtualClusterConfig'] == null ? null : pulumi.Output.create<ClusterVirtualClusterConfig>(ClusterVirtualClusterConfig.fromMap((map['virtualClusterConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

