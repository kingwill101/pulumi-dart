// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_config_data_retention_config_airflow_metadata_retention_config.dart';
import 'get_environment_config_data_retention_config_task_logs_retention_config.dart';

class GetEnvironmentConfigDataRetentionConfig {
  /// Optional. The policy for airflow metadata database retention.
  final pulumi.Input<List<GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig>> airflowMetadataRetentionConfigs;
  /// Optional. The configuration setting for Task Logs.
  final pulumi.Input<List<GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig>> taskLogsRetentionConfigs;

  /// Creates a new [GetEnvironmentConfigDataRetentionConfig].
  /// [airflowMetadataRetentionConfigs] Optional. The policy for airflow metadata database retention.
  /// [taskLogsRetentionConfigs] Optional. The configuration setting for Task Logs.
  const GetEnvironmentConfigDataRetentionConfig({
    required this.airflowMetadataRetentionConfigs,
    required this.taskLogsRetentionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'airflowMetadataRetentionConfigs': pulumi.Input.mapInputValue<List<GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig>, List<Map<String, dynamic>>>(airflowMetadataRetentionConfigs, (value) => pulumi.Input.encodeList<GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'taskLogsRetentionConfigs': pulumi.Input.mapInputValue<List<GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig>, List<Map<String, dynamic>>>(taskLogsRetentionConfigs, (value) => pulumi.Input.encodeList<GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetEnvironmentConfigDataRetentionConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigDataRetentionConfig(
      airflowMetadataRetentionConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig>(map['airflowMetadataRetentionConfigs']!, (value) => GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig.fromMap((value as Map).cast<String, dynamic>()))),
      taskLogsRetentionConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig>(map['taskLogsRetentionConfigs']!, (value) => GetEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

