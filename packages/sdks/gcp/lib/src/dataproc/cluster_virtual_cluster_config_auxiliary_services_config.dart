// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_virtual_cluster_config_auxiliary_services_config_metastore_config.dart';
import 'cluster_virtual_cluster_config_auxiliary_services_config_spark_history_server_config.dart';

class ClusterVirtualClusterConfigAuxiliaryServicesConfig {
  /// The Hive Metastore configuration for this workload.
  final pulumi.Input<ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig?>? metastoreConfig;
  /// The Spark History Server configuration for the workload.
  final pulumi.Input<ClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig?>? sparkHistoryServerConfig;

  /// Creates a new [ClusterVirtualClusterConfigAuxiliaryServicesConfig].
  /// [metastoreConfig] The Hive Metastore configuration for this workload.
  /// [sparkHistoryServerConfig] The Spark History Server configuration for the workload.
  const ClusterVirtualClusterConfigAuxiliaryServicesConfig({
    this.metastoreConfig,
    this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreConfig': ?pulumi.Input.mapOptionalInputValue<ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig, Map<String, dynamic>>(metastoreConfig, (value) => value.toMap()),
      'sparkHistoryServerConfig': ?pulumi.Input.mapOptionalInputValue<ClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig, Map<String, dynamic>>(sparkHistoryServerConfig, (value) => value.toMap()),
    };
  }

  factory ClusterVirtualClusterConfigAuxiliaryServicesConfig.fromMap(Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigAuxiliaryServicesConfig(
      metastoreConfig: (() { final guardedValue = map['metastoreConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkHistoryServerConfig: (() { final guardedValue = map['sparkHistoryServerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
