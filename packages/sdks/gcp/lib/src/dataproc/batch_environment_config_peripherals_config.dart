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
  BatchEnvironmentConfigPeripheralsConfig({
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
      metastoreService: map['metastoreService'] == null ? null : (map['metastoreService']! as String).input(),
      sparkHistoryServerConfig: map['sparkHistoryServerConfig'] == null ? null : (BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig.fromMap((map['sparkHistoryServerConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

