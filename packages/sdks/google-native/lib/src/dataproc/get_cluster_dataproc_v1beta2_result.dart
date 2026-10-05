// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config_response_dataproc_v1beta2.dart';
import 'cluster_metrics_response_dataproc_v1beta2.dart';
import 'cluster_status_response_dataproc_v1beta2.dart';

/// Result data returned by getCluster.
class GetClusterDataprocV1beta2Result {
  /// The cluster name. Cluster names within a project must be unique. Names of deleted clusters can be reused.
  final String? clusterName;
  /// A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
  final String? clusterUuid;
  /// The cluster config. Note that Dataproc may set default values, and values may change when clusters are updated.
  final ClusterConfigResponseDataprocV1beta2? config;
  /// Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final Map<String, String>? labels;
  /// Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  final ClusterMetricsResponseDataprocV1beta2? metrics;
  /// The Google Cloud Platform project ID that the cluster belongs to.
  final String? project;
  /// Cluster status.
  final ClusterStatusResponseDataprocV1beta2? status;
  /// The previous cluster status.
  final List<ClusterStatusResponseDataprocV1beta2>? statusHistory;

  /// Creates a new [GetClusterDataprocV1beta2Result].
  /// [clusterName] The cluster name. Cluster names within a project must be unique. Names of deleted clusters can be reused.
  /// [clusterUuid] A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
  /// [config] The cluster config. Note that Dataproc may set default values, and values may change when clusters are updated.
  /// [labels] Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  /// [metrics] Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  /// [project] The Google Cloud Platform project ID that the cluster belongs to.
  /// [status] Cluster status.
  /// [statusHistory] The previous cluster status.
  const GetClusterDataprocV1beta2Result({
    this.clusterName,
    this.clusterUuid,
    this.config,
    this.labels,
    this.metrics,
    this.project,
    this.status,
    this.statusHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'clusterUuid': ?clusterUuid,
      'config': ?config?.toMap(),
      'labels': ?labels,
      'metrics': ?metrics?.toMap(),
      'project': ?project,
      'status': ?status?.toMap(),
      'statusHistory': ?(() { final guardedValue = statusHistory; if (guardedValue == null) return null; return pulumi.Input.encodeList<ClusterStatusResponseDataprocV1beta2, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetClusterDataprocV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetClusterDataprocV1beta2Result(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterUuid: (() { final guardedValue = map['clusterUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return ClusterConfigResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return ClusterMetricsResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ClusterStatusResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      statusHistory: (() { final guardedValue = map['statusHistory']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterStatusResponseDataprocV1beta2>(guardedValue, (value) => ClusterStatusResponseDataprocV1beta2.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
