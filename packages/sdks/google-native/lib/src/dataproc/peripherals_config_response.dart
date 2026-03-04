// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spark_history_server_config_response.dart';

/// Auxiliary services configuration for a workload.
class PeripheralsConfigResponse {
  /// Optional. Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[region]/services/[service_id]
  final pulumi.Input<String> metastoreService;

  /// Optional. The Spark History Server configuration for the workload.
  final pulumi.Input<SparkHistoryServerConfigResponse> sparkHistoryServerConfig;

  /// Creates a new [PeripheralsConfigResponse].
  /// [metastoreService] Optional. Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[region]/services/[service_id]
  /// [sparkHistoryServerConfig] Optional. The Spark History Server configuration for the workload.
  PeripheralsConfigResponse({
    required this.metastoreService,
    required this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreService': metastoreService,
      'sparkHistoryServerConfig':
          pulumi.Input.mapInputValue<
            SparkHistoryServerConfigResponse,
            Map<String, dynamic>
          >(sparkHistoryServerConfig, (value) => value.toMap()),
    };
  }

  factory PeripheralsConfigResponse.fromMap(Map<String, dynamic> map) {
    return PeripheralsConfigResponse(
      metastoreService: pulumi.Input.fromValue(
        map['metastoreService'] as String,
      ),
      sparkHistoryServerConfig: pulumi.Input.fromValue(
        SparkHistoryServerConfigResponse.fromMap(
          (map['sparkHistoryServerConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
