// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config_response.dart';
import 'cluster_metrics_response.dart';
import 'cluster_status_response.dart';
import 'virtual_cluster_config_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The cluster name, which must be unique within a project. The name must start with a lowercase letter, and can contain up to 51 lowercase letters, numbers, and hyphens. It cannot end with a hyphen. The name of a deleted cluster can be reused.
  final String? clusterName;
  /// A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
  final String? clusterUuid;
  /// Optional. The cluster config for a cluster of Compute Engine Instances. Note that Dataproc may set default values, and values may change when clusters are updated.Exactly one of ClusterConfig or VirtualClusterConfig must be specified.
  final ClusterConfigResponse? config;
  /// Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final Map<String, String>? labels;
  /// Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  final ClusterMetricsResponse? metrics;
  /// The Google Cloud Platform project ID that the cluster belongs to.
  final String? project;
  /// Cluster status.
  final ClusterStatusResponse? status;
  /// The previous cluster status.
  final List<ClusterStatusResponse>? statusHistory;
  /// Optional. The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview). Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtual_cluster_config must be specified.
  final VirtualClusterConfigResponse? virtualClusterConfig;

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
    this.clusterName,
    this.clusterUuid,
    this.config,
    this.labels,
    this.metrics,
    this.project,
    this.status,
    this.statusHistory,
    this.virtualClusterConfig,
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
      'statusHistory': ?(() { final guardedValue = statusHistory; if (guardedValue == null) return null; return pulumi.Input.encodeList<ClusterStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'virtualClusterConfig': ?virtualClusterConfig?.toMap(),
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterUuid: (() { final guardedValue = map['clusterUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return ClusterConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return ClusterMetricsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ClusterStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      statusHistory: (() { final guardedValue = map['statusHistory']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterStatusResponse>(guardedValue, (value) => ClusterStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      virtualClusterConfig: (() { final guardedValue = map['virtualClusterConfig']; if (guardedValue == null) return null; return VirtualClusterConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
