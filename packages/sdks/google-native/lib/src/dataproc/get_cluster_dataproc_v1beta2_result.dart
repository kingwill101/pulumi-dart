// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config_response_dataproc_v1beta2.dart';
import 'cluster_metrics_response_dataproc_v1beta2.dart';
import 'cluster_status_response_dataproc_v1beta2.dart';

/// Result data returned by getCluster.
class GetClusterDataprocV1beta2Result {
  /// The cluster name. Cluster names within a project must be unique. Names of deleted clusters can be reused.
  final String clusterName;
  /// A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
  final String clusterUuid;
  /// The cluster config. Note that Dataproc may set default values, and values may change when clusters are updated.
  final ClusterConfigResponseDataprocV1beta2 config;
  /// Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final Map<String, String> labels;
  /// Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  final ClusterMetricsResponseDataprocV1beta2 metrics;
  /// The Google Cloud Platform project ID that the cluster belongs to.
  final String project;
  /// Cluster status.
  final ClusterStatusResponseDataprocV1beta2 status;
  /// The previous cluster status.
  final List<ClusterStatusResponseDataprocV1beta2> statusHistory;

  /// Creates a new [GetClusterDataprocV1beta2Result].
  /// [clusterName] The cluster name. Cluster names within a project must be unique. Names of deleted clusters can be reused.
  /// [clusterUuid] A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
  /// [config] The cluster config. Note that Dataproc may set default values, and values may change when clusters are updated.
  /// [labels] Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  /// [metrics] Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  /// [project] The Google Cloud Platform project ID that the cluster belongs to.
  /// [status] Cluster status.
  /// [statusHistory] The previous cluster status.
  GetClusterDataprocV1beta2Result({
    required this.clusterName,
    required this.clusterUuid,
    required this.config,
    required this.labels,
    required this.metrics,
    required this.project,
    required this.status,
    required this.statusHistory,
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
      'statusHistory': pulumi.Input.encodeList<ClusterStatusResponseDataprocV1beta2, Map<String, dynamic>>(statusHistory, (value) => value.toMap()),
    };
  }

  factory GetClusterDataprocV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetClusterDataprocV1beta2Result(
      clusterName: map['clusterName'] as String,
      clusterUuid: map['clusterUuid'] as String,
      config: ClusterConfigResponseDataprocV1beta2.fromMap((map['config']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      metrics: ClusterMetricsResponseDataprocV1beta2.fromMap((map['metrics']! as Map).cast<String, dynamic>()),
      project: map['project'] as String,
      status: ClusterStatusResponseDataprocV1beta2.fromMap((map['status']! as Map).cast<String, dynamic>()),
      statusHistory: pulumi.Input.decodeList<ClusterStatusResponseDataprocV1beta2>(map['statusHistory']!, (value) => ClusterStatusResponseDataprocV1beta2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

