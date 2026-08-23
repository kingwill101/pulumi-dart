// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_gcs_destination.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_alert_config.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config.dart';

/// The model monitoring configuration used for Batch Prediction Job.
class GoogleCloudAiplatformV1beta1ModelMonitoringConfig {
  /// Model monitoring alert config.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig>? alertConfig;
  /// YAML schema file uri in Cloud Storage describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  final pulumi.Input<String>? analysisInstanceSchemaUri;
  /// Model monitoring objective config.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig>>? objectiveConfigs;
  /// A Google Cloud Storage location for batch prediction model monitoring to dump statistics and anomalies. If not provided, a folder will be created in customer project to hold statistics and anomalies.
  final pulumi.Input<GoogleCloudAiplatformV1beta1GcsDestination>? statsAnomaliesBaseDirectory;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringConfig].
  /// [alertConfig] Model monitoring alert config.
  /// [analysisInstanceSchemaUri] YAML schema file uri in Cloud Storage describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  /// [objectiveConfigs] Model monitoring objective config.
  /// [statsAnomaliesBaseDirectory] A Google Cloud Storage location for batch prediction model monitoring to dump statistics and anomalies. If not provided, a folder will be created in customer project to hold statistics and anomalies.
  const GoogleCloudAiplatformV1beta1ModelMonitoringConfig({
    this.alertConfig,
    this.analysisInstanceSchemaUri,
    this.objectiveConfigs,
    this.statsAnomaliesBaseDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig, Map<String, dynamic>>(alertConfig, (value) => value.toMap()),
      'analysisInstanceSchemaUri': ?analysisInstanceSchemaUri,
      'objectiveConfigs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig>, List<Map<String, dynamic>>>(objectiveConfigs, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statsAnomaliesBaseDirectory': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1GcsDestination, Map<String, dynamic>>(statsAnomaliesBaseDirectory, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringConfig(
      alertConfig: (() { final guardedValue = map['alertConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      analysisInstanceSchemaUri: (() { final guardedValue = map['analysisInstanceSchemaUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectiveConfigs: (() { final guardedValue = map['objectiveConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig>(guardedValue, (value) => GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statsAnomaliesBaseDirectory: (() { final guardedValue = map['statsAnomaliesBaseDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1GcsDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
