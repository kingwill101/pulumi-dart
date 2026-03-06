// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Spark History Server configuration for the workload.
class SparkHistoryServerConfigResponse {
  /// Optional. Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.Example: projects/[project_id]/regions/[region]/clusters/[cluster_name]
  final pulumi.Input<String> dataprocCluster;

  /// Creates a new [SparkHistoryServerConfigResponse].
  /// [dataprocCluster] Optional. Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.Example: projects/[project_id]/regions/[region]/clusters/[cluster_name]
  const SparkHistoryServerConfigResponse({
    required this.dataprocCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocCluster': dataprocCluster,
    };
  }

  factory SparkHistoryServerConfigResponse.fromMap(Map<String, dynamic> map) {
    return SparkHistoryServerConfigResponse(
      dataprocCluster: pulumi.Input.fromValue(map['dataprocCluster'] as String),
    );
  }
}

