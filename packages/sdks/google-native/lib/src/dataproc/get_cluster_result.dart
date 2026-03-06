// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config_response.dart';
import 'cluster_metrics_response.dart';
import 'cluster_status_response.dart';
import 'virtual_cluster_config_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The cluster name, which must be unique within a project. The name must start with a lowercase letter, and can contain up to 51 lowercase letters, numbers, and hyphens. It cannot end with a hyphen. The name of a deleted cluster can be reused.
  final String clusterName;
  /// A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
  final String clusterUuid;
  /// Optional. The cluster config for a cluster of Compute Engine Instances. Note that Dataproc may set default values, and values may change when clusters are updated.Exactly one of ClusterConfig or VirtualClusterConfig must be specified.
  final ClusterConfigResponse config;
  /// Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final Map<String, String> labels;
  /// Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  final ClusterMetricsResponse metrics;
  /// The Google Cloud Platform project ID that the cluster belongs to.
  final String project;
  /// Cluster status.
  final ClusterStatusResponse status;
  /// The previous cluster status.
  final List<ClusterStatusResponse> statusHistory;
  /// Optional. The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview). Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtual_cluster_config must be specified.
  final VirtualClusterConfigResponse virtualClusterConfig;

  /// Creates a new [GetClusterResult].
  /// [clusterName] The cluster name, which must be unique within a project. The name must start with a lowercase letter, and can contain up to 51 lowercase letters, numbers, and hyphens. It cannot end with a hyphen. The name of a deleted cluster can be reused.
  /// [clusterUuid] A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
  /// [config] Optional. The cluster config for a cluster of Compute Engine Instances. Note that Dataproc may set default values, and values may change when clusters are updated.Exactly one of ClusterConfig or VirtualClusterConfig must be specified.
  /// [labels] Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  /// [metrics] Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  /// [project] The Google Cloud Platform project ID that the cluster belongs to.
  /// [status] Cluster status.
  /// [statusHistory] The previous cluster status.
  /// [virtualClusterConfig] Optional. The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview). Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtual_cluster_config must be specified.
  const GetClusterResult({
    required this.clusterName,
    required this.clusterUuid,
    required this.config,
    required this.labels,
    required this.metrics,
    required this.project,
    required this.status,
    required this.statusHistory,
    required this.virtualClusterConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'clusterUuid': clusterUuid,
      'config': config.toMap(),
      'labels': labels,
      'metrics': metrics.toMap(),
      'project': project,
      'status': status.toMap(),
      'statusHistory': pulumi.Input.encodeList<ClusterStatusResponse, Map<String, dynamic>>(statusHistory, (value) => value.toMap()),
      'virtualClusterConfig': virtualClusterConfig.toMap(),
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      clusterName: map['clusterName'] as String,
      clusterUuid: map['clusterUuid'] as String,
      config: ClusterConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      metrics: ClusterMetricsResponse.fromMap((map['metrics']! as Map).cast<String, dynamic>()),
      project: map['project'] as String,
      status: ClusterStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      statusHistory: pulumi.Input.decodeList<ClusterStatusResponse>(map['statusHistory']!, (value) => ClusterStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      virtualClusterConfig: VirtualClusterConfigResponse.fromMap((map['virtualClusterConfig']! as Map).cast<String, dynamic>()),
    );
  }
}

