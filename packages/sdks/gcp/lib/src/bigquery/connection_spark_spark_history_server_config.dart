// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionSparkSparkHistoryServerConfig {
  /// Resource name of an existing Dataproc Cluster to act as a Spark History Server for the connection if the form of projects/[projectId]/regions/[region]/clusters/[clusterName].
  final pulumi.Input<String>? dataprocCluster;

  /// Creates a new [ConnectionSparkSparkHistoryServerConfig].
  /// [dataprocCluster] Resource name of an existing Dataproc Cluster to act as a Spark History Server for the connection if the form of projects/[projectId]/regions/[region]/clusters/[clusterName].
  const ConnectionSparkSparkHistoryServerConfig({
    this.dataprocCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocCluster': ?dataprocCluster,
    };
  }

  factory ConnectionSparkSparkHistoryServerConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionSparkSparkHistoryServerConfig(
      dataprocCluster: (() { final guardedValue = map['dataprocCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
