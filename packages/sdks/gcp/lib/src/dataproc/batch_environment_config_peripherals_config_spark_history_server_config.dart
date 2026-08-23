// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig {
  /// Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.
  final pulumi.Input<String>? dataprocCluster;

  /// Creates a new [BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig].
  /// [dataprocCluster] Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.
  const BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig({
    this.dataprocCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocCluster': ?dataprocCluster,
    };
  }

  factory BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig.fromMap(Map<String, dynamic> map) {
    return BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig(
      dataprocCluster: (() { final guardedValue = map['dataprocCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
