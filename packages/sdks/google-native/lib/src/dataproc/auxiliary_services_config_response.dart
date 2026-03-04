// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_config_response.dart';
import 'spark_history_server_config_response.dart';

/// Auxiliary services configuration for a Cluster.
class AuxiliaryServicesConfigResponse {
  /// Optional. The Hive Metastore configuration for this workload.
  final pulumi.Input<MetastoreConfigResponse> metastoreConfig;

  /// Optional. The Spark History Server configuration for the workload.
  final pulumi.Input<SparkHistoryServerConfigResponse> sparkHistoryServerConfig;

  /// Creates a new [AuxiliaryServicesConfigResponse].
  /// [metastoreConfig] Optional. The Hive Metastore configuration for this workload.
  /// [sparkHistoryServerConfig] Optional. The Spark History Server configuration for the workload.
  AuxiliaryServicesConfigResponse({
    required this.metastoreConfig,
    required this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreConfig':
          pulumi.Input.mapInputValue<
            MetastoreConfigResponse,
            Map<String, dynamic>
          >(metastoreConfig, (value) => value.toMap()),
      'sparkHistoryServerConfig':
          pulumi.Input.mapInputValue<
            SparkHistoryServerConfigResponse,
            Map<String, dynamic>
          >(sparkHistoryServerConfig, (value) => value.toMap()),
    };
  }

  factory AuxiliaryServicesConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuxiliaryServicesConfigResponse(
      metastoreConfig: pulumi.Input.fromValue(
        MetastoreConfigResponse.fromMap(
          (map['metastoreConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      sparkHistoryServerConfig: pulumi.Input.fromValue(
        SparkHistoryServerConfigResponse.fromMap(
          (map['sparkHistoryServerConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
