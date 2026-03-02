// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig {
  /// Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.
  final pulumi.Input<String>? dataprocCluster;

  /// Creates a new [SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig].
  /// [dataprocCluster] Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.
  SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig({
    this.dataprocCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocCluster': ?dataprocCluster,
    };
  }

  factory SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig.fromMap(Map<String, dynamic> map) {
    return SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig(
      dataprocCluster: map['dataprocCluster'] == null ? null : (map['dataprocCluster'] as String).input(),
    );
  }
}

