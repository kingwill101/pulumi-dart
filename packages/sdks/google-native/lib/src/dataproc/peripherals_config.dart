// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spark_history_server_config.dart';

/// Auxiliary services configuration for a workload.
class PeripheralsConfig {
  /// Optional. Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[region]/services/[service_id]
  final pulumi.Input<String>? metastoreService;
  /// Optional. The Spark History Server configuration for the workload.
  final pulumi.Input<SparkHistoryServerConfig>? sparkHistoryServerConfig;

  /// Creates a new [PeripheralsConfig].
  /// [metastoreService] Optional. Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[region]/services/[service_id]
  /// [sparkHistoryServerConfig] Optional. The Spark History Server configuration for the workload.
  const PeripheralsConfig({
    this.metastoreService,
    this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreService': ?metastoreService,
      'sparkHistoryServerConfig': ?pulumi.Input.mapOptionalInputValue<SparkHistoryServerConfig, Map<String, dynamic>>(sparkHistoryServerConfig, (value) => value.toMap()),
    };
  }

  factory PeripheralsConfig.fromMap(Map<String, dynamic> map) {
    return PeripheralsConfig(
      metastoreService: (() { final guardedValue = map['metastoreService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkHistoryServerConfig: (() { final guardedValue = map['sparkHistoryServerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkHistoryServerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

