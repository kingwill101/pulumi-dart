// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config.dart';
import 'cluster_virtual_cluster_config.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Allows you to configure various aspects of the cluster.
  /// Structure defined below.
  final pulumi.Input<ClusterClusterConfig>? clusterConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  final pulumi.Input<String>? deletionPolicy;
  /// The list of labels (key/value pairs) to be applied to
  /// instances in the cluster. GCP generates some itself including `goog-dataproc-cluster-name`
  /// which is the name of the cluster.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Allows graceful decomissioning when you change the number of worker nodes directly through an apply.
  /// Does not affect auto scaling decomissioning from an autoscaling policy.
  /// Graceful decommissioning allows removing nodes from the cluster without interrupting jobs in progress.
  /// Timeout specifies how long to wait for jobs in progress to finish before forcefully removing nodes (and potentially interrupting jobs).
  /// Default timeout is 0 (for forceful decommission), and the maximum allowed timeout is 1 day. (see JSON representation of
  /// [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// Only supported on Dataproc image versions 1.2 and higher.
  /// For more context see the [docs](https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.clusters/patch#query-parameters)
  final pulumi.Input<String>? gracefulDecommissionTimeout;
  /// The list of labels (key/value pairs) configured on the resource through Terraform and to be applied to
  /// instances in the cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration. Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [effectiveLabels] The list of labels (key/value pairs) to be applied to
  /// [gracefulDecommissionTimeout] Allows graceful decomissioning when you change the number of worker nodes directly through an apply.
  /// [labels] The list of labels (key/value pairs) configured on the resource through Terraform and to be applied to
  /// [name] The name of the cluster, unique within the project and
  /// [project] The ID of the project in which the `cluster` will exist. If it
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [region] The region in which the cluster and associated nodes will be created in.
  /// [virtualClusterConfig] Allows you to configure a virtual Dataproc on GKE cluster.
  const ClusterState({
    this.clusterConfig,
    this.deletionPolicy,
    this.effectiveLabels,
    this.gracefulDecommissionTimeout,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.region,
    this.virtualClusterConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfig, Map<String, dynamic>>(clusterConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
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
      clusterConfig: (() { final guardedValue = map['clusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      gracefulDecommissionTimeout: (() { final guardedValue = map['gracefulDecommissionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualClusterConfig: (() { final guardedValue = map['virtualClusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterVirtualClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
