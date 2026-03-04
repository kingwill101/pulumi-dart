// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Spark History Server configuration for the workload.
class SparkHistoryServerConfig {
  /// Optional. Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.Example: projects/[project_id]/regions/[region]/clusters/[cluster_name]
  final pulumi.Input<String>? dataprocCluster;

  /// Creates a new [SparkHistoryServerConfig].
  /// [dataprocCluster] Optional. Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.Example: projects/[project_id]/regions/[region]/clusters/[cluster_name]
  SparkHistoryServerConfig({this.dataprocCluster});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dataprocCluster': ?dataprocCluster};
  }

  factory SparkHistoryServerConfig.fromMap(Map<String, dynamic> map) {
    return SparkHistoryServerConfig(
      dataprocCluster: (() {
        final guardedValue = map['dataprocCluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
