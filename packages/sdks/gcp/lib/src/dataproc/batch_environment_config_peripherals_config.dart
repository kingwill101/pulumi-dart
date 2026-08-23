// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_environment_config_peripherals_config_spark_history_server_config.dart';

class BatchEnvironmentConfigPeripheralsConfig {
  /// Resource name of an existing Dataproc Metastore service.
  final pulumi.Input<String>? metastoreService;
  /// The Spark History Server configuration for the workload.
  /// Structure is documented below.
  final pulumi.Input<BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig>? sparkHistoryServerConfig;

  /// Creates a new [BatchEnvironmentConfigPeripheralsConfig].
  /// [metastoreService] Resource name of an existing Dataproc Metastore service.
  /// [sparkHistoryServerConfig] The Spark History Server configuration for the workload.
  const BatchEnvironmentConfigPeripheralsConfig({
    this.metastoreService,
    this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreService': ?metastoreService,
      'sparkHistoryServerConfig': ?pulumi.Input.mapOptionalInputValue<BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig, Map<String, dynamic>>(sparkHistoryServerConfig, (value) => value.toMap()),
    };
  }

  factory BatchEnvironmentConfigPeripheralsConfig.fromMap(Map<String, dynamic> map) {
    return BatchEnvironmentConfigPeripheralsConfig(
      metastoreService: (() { final guardedValue = map['metastoreService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkHistoryServerConfig: (() { final guardedValue = map['sparkHistoryServerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
