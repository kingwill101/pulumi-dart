// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_config.dart';
import 'spark_history_server_config.dart';

/// Auxiliary services configuration for a Cluster.
class AuxiliaryServicesConfig {
  /// Optional. The Hive Metastore configuration for this workload.
  final pulumi.Input<MetastoreConfig>? metastoreConfig;
  /// Optional. The Spark History Server configuration for the workload.
  final pulumi.Input<SparkHistoryServerConfig>? sparkHistoryServerConfig;

  /// Creates a new [AuxiliaryServicesConfig].
  /// [metastoreConfig] Optional. The Hive Metastore configuration for this workload.
  /// [sparkHistoryServerConfig] Optional. The Spark History Server configuration for the workload.
  const AuxiliaryServicesConfig({
    this.metastoreConfig,
    this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreConfig, Map<String, dynamic>>(metastoreConfig, (value) => value.toMap()),
      'sparkHistoryServerConfig': ?pulumi.Input.mapOptionalInputValue<SparkHistoryServerConfig, Map<String, dynamic>>(sparkHistoryServerConfig, (value) => value.toMap()),
    };
  }

  factory AuxiliaryServicesConfig.fromMap(Map<String, dynamic> map) {
    return AuxiliaryServicesConfig(
      metastoreConfig: (() { final guardedValue = map['metastoreConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetastoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkHistoryServerConfig: (() { final guardedValue = map['sparkHistoryServerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkHistoryServerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

