// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_gcs_destination_response.dart';
import 'google_cloud_aiplatform_v1_model_deployment_monitoring_big_query_table_response.dart';
import 'google_cloud_aiplatform_v1_model_deployment_monitoring_job_latest_monitoring_pipeline_metadata_response.dart';
import 'google_cloud_aiplatform_v1_model_deployment_monitoring_objective_config_response.dart';
import 'google_cloud_aiplatform_v1_model_deployment_monitoring_schedule_config_response.dart';
import 'google_cloud_aiplatform_v1_model_monitoring_alert_config_response.dart';
import 'google_cloud_aiplatform_v1_sampling_strategy_response.dart';
import 'google_rpc_status_response.dart';

/// Result data returned by getModelDeploymentMonitoringJob.
class GetModelDeploymentMonitoringJobResult {
  /// YAML schema file uri describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If this field is empty, all the feature data types are inferred from predict_instance_schema_uri, meaning that TFDV will use the data in the exact format(data type) as prediction request/response. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  final String analysisInstanceSchemaUri;

  /// The created bigquery tables for the job under customer project. Customer could do their own query & analysis. There could be 4 log tables in maximum: 1. Training data logging predict request/response 2. Serving data logging predict request/response
  final List<
    GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse
  >
  bigqueryTables;

  /// Timestamp when this ModelDeploymentMonitoringJob was created.
  final String createTime;

  /// The user-defined name of the ModelDeploymentMonitoringJob. The name can be up to 128 characters long and can consist of any UTF-8 characters. Display name of a ModelDeploymentMonitoringJob.
  final String displayName;

  /// If true, the scheduled monitoring pipeline logs are sent to Google Cloud Logging, including pipeline status and anomalies detected. Please note the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging#pricing).
  final bool enableMonitoringPipelineLogs;

  /// Customer-managed encryption key spec for a ModelDeploymentMonitoringJob. If set, this ModelDeploymentMonitoringJob and all sub-resources of this ModelDeploymentMonitoringJob will be secured by this key.
  final GoogleCloudAiplatformV1EncryptionSpecResponse encryptionSpec;

  /// Endpoint resource name. Format: `projects/{project}/locations/{location}/endpoints/{endpoint}`
  final String endpoint;

  /// Only populated when the job's state is `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  final GoogleRpcStatusResponse error;

  /// The labels with user-defined metadata to organize your ModelDeploymentMonitoringJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String> labels;

  /// Latest triggered monitoring pipeline metadata.
  final GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse
  latestMonitoringPipelineMetadata;

  /// The TTL of BigQuery tables in user projects which stores logs. A day is the basic unit of the TTL and we take the ceil of TTL/86400(a day). e.g. { second: 3600} indicates ttl = 1 day.
  final String logTtl;

  /// Sample Strategy for logging.
  final GoogleCloudAiplatformV1SamplingStrategyResponse loggingSamplingStrategy;

  /// The config for monitoring objectives. This is a per DeployedModel config. Each DeployedModel needs to be configured separately.
  final List<
    GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfigResponse
  >
  modelDeploymentMonitoringObjectiveConfigs;

  /// Schedule config for running the monitoring job.
  final GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfigResponse
  modelDeploymentMonitoringScheduleConfig;

  /// Alert config for model monitoring.
  final GoogleCloudAiplatformV1ModelMonitoringAlertConfigResponse
  modelMonitoringAlertConfig;

  /// Resource name of a ModelDeploymentMonitoringJob.
  final String name;

  /// Timestamp when this monitoring pipeline will be scheduled to run for the next round.
  final String nextScheduleTime;

  /// YAML schema file uri describing the format of a single instance, which are given to format this Endpoint's prediction (and explanation). If not set, we will generate predict schema from collected predict requests.
  final String predictInstanceSchemaUri;

  /// Sample Predict instance, same format as PredictRequest.instances, this can be set as a replacement of ModelDeploymentMonitoringJob.predict_instance_schema_uri. If not set, we will generate predict schema from collected predict requests.
  final dynamic samplePredictInstance;

  /// Schedule state when the monitoring job is in Running state.
  final String scheduleState;

  /// The detailed state of the monitoring job. When the job is still creating, the state will be 'PENDING'. Once the job is successfully created, the state will be 'RUNNING'. Pause the job, the state will be 'PAUSED'. Resume the job, the state will return to 'RUNNING'.
  final String state;

  /// Stats anomalies base folder path.
  final GoogleCloudAiplatformV1GcsDestinationResponse
  statsAnomaliesBaseDirectory;

  /// Timestamp when this ModelDeploymentMonitoringJob was updated most recently.
  final String updateTime;

  /// Creates a new [GetModelDeploymentMonitoringJobResult].
  /// [analysisInstanceSchemaUri] YAML schema file uri describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If this field is empty, all the feature data types are inferred from predict_instance_schema_uri, meaning that TFDV will use the data in the exact format(data type) as prediction request/response. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  /// [bigqueryTables] The created bigquery tables for the job under customer project. Customer could do their own query & analysis. There could be 4 log tables in maximum: 1. Training data logging predict request/response 2. Serving data logging predict request/response
  /// [createTime] Timestamp when this ModelDeploymentMonitoringJob was created.
  /// [displayName] The user-defined name of the ModelDeploymentMonitoringJob. The name can be up to 128 characters long and can consist of any UTF-8 characters. Display name of a ModelDeploymentMonitoringJob.
  /// [enableMonitoringPipelineLogs] If true, the scheduled monitoring pipeline logs are sent to Google Cloud Logging, including pipeline status and anomalies detected. Please note the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging#pricing).
  /// [encryptionSpec] Customer-managed encryption key spec for a ModelDeploymentMonitoringJob. If set, this ModelDeploymentMonitoringJob and all sub-resources of this ModelDeploymentMonitoringJob will be secured by this key.
  /// [endpoint] Endpoint resource name. Format: `projects/{project}/locations/{location}/endpoints/{endpoint}`
  /// [error] Only populated when the job's state is `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  /// [labels] The labels with user-defined metadata to organize your ModelDeploymentMonitoringJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [latestMonitoringPipelineMetadata] Latest triggered monitoring pipeline metadata.
  /// [logTtl] The TTL of BigQuery tables in user projects which stores logs. A day is the basic unit of the TTL and we take the ceil of TTL/86400(a day). e.g. { second: 3600} indicates ttl = 1 day.
  /// [loggingSamplingStrategy] Sample Strategy for logging.
  /// [modelDeploymentMonitoringObjectiveConfigs] The config for monitoring objectives. This is a per DeployedModel config. Each DeployedModel needs to be configured separately.
  /// [modelDeploymentMonitoringScheduleConfig] Schedule config for running the monitoring job.
  /// [modelMonitoringAlertConfig] Alert config for model monitoring.
  /// [name] Resource name of a ModelDeploymentMonitoringJob.
  /// [nextScheduleTime] Timestamp when this monitoring pipeline will be scheduled to run for the next round.
  /// [predictInstanceSchemaUri] YAML schema file uri describing the format of a single instance, which are given to format this Endpoint's prediction (and explanation). If not set, we will generate predict schema from collected predict requests.
  /// [samplePredictInstance] Sample Predict instance, same format as PredictRequest.instances, this can be set as a replacement of ModelDeploymentMonitoringJob.predict_instance_schema_uri. If not set, we will generate predict schema from collected predict requests.
  /// [scheduleState] Schedule state when the monitoring job is in Running state.
  /// [state] The detailed state of the monitoring job. When the job is still creating, the state will be 'PENDING'. Once the job is successfully created, the state will be 'RUNNING'. Pause the job, the state will be 'PAUSED'. Resume the job, the state will return to 'RUNNING'.
  /// [statsAnomaliesBaseDirectory] Stats anomalies base folder path.
  /// [updateTime] Timestamp when this ModelDeploymentMonitoringJob was updated most recently.
  GetModelDeploymentMonitoringJobResult({
    required this.analysisInstanceSchemaUri,
    required this.bigqueryTables,
    required this.createTime,
    required this.displayName,
    required this.enableMonitoringPipelineLogs,
    required this.encryptionSpec,
    required this.endpoint,
    required this.error,
    required this.labels,
    required this.latestMonitoringPipelineMetadata,
    required this.logTtl,
    required this.loggingSamplingStrategy,
    required this.modelDeploymentMonitoringObjectiveConfigs,
    required this.modelDeploymentMonitoringScheduleConfig,
    required this.modelMonitoringAlertConfig,
    required this.name,
    required this.nextScheduleTime,
    required this.predictInstanceSchemaUri,
    required this.samplePredictInstance,
    required this.scheduleState,
    required this.state,
    required this.statsAnomaliesBaseDirectory,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisInstanceSchemaUri': analysisInstanceSchemaUri,
      'bigqueryTables':
          pulumi.Input.encodeList<
            GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse,
            Map<String, dynamic>
          >(bigqueryTables, (value) => value.toMap()),
      'createTime': createTime,
      'displayName': displayName,
      'enableMonitoringPipelineLogs': enableMonitoringPipelineLogs,
      'encryptionSpec': encryptionSpec.toMap(),
      'endpoint': endpoint,
      'error': error.toMap(),
      'labels': labels,
      'latestMonitoringPipelineMetadata': latestMonitoringPipelineMetadata
          .toMap(),
      'logTtl': logTtl,
      'loggingSamplingStrategy': loggingSamplingStrategy.toMap(),
      'modelDeploymentMonitoringObjectiveConfigs':
          pulumi.Input.encodeList<
            GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfigResponse,
            Map<String, dynamic>
          >(
            modelDeploymentMonitoringObjectiveConfigs,
            (value) => value.toMap(),
          ),
      'modelDeploymentMonitoringScheduleConfig':
          modelDeploymentMonitoringScheduleConfig.toMap(),
      'modelMonitoringAlertConfig': modelMonitoringAlertConfig.toMap(),
      'name': name,
      'nextScheduleTime': nextScheduleTime,
      'predictInstanceSchemaUri': predictInstanceSchemaUri,
      'samplePredictInstance': samplePredictInstance,
      'scheduleState': scheduleState,
      'state': state,
      'statsAnomaliesBaseDirectory': statsAnomaliesBaseDirectory.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetModelDeploymentMonitoringJobResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetModelDeploymentMonitoringJobResult(
      analysisInstanceSchemaUri: map['analysisInstanceSchemaUri'] as String,
      bigqueryTables:
          pulumi.Input.decodeList<
            GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse
          >(
            map['bigqueryTables']!,
            (value) =>
                GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      enableMonitoringPipelineLogs: map['enableMonitoringPipelineLogs'] as bool,
      encryptionSpec: GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap(
        (map['encryptionSpec']! as Map).cast<String, dynamic>(),
      ),
      endpoint: map['endpoint'] as String,
      error: GoogleRpcStatusResponse.fromMap(
        (map['error']! as Map).cast<String, dynamic>(),
      ),
      labels: (map['labels'] as Map).cast<String, String>(),
      latestMonitoringPipelineMetadata:
          GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse.fromMap(
            (map['latestMonitoringPipelineMetadata']! as Map)
                .cast<String, dynamic>(),
          ),
      logTtl: map['logTtl'] as String,
      loggingSamplingStrategy:
          GoogleCloudAiplatformV1SamplingStrategyResponse.fromMap(
            (map['loggingSamplingStrategy']! as Map).cast<String, dynamic>(),
          ),
      modelDeploymentMonitoringObjectiveConfigs:
          pulumi.Input.decodeList<
            GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfigResponse
          >(
            map['modelDeploymentMonitoringObjectiveConfigs']!,
            (value) =>
                GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfigResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      modelDeploymentMonitoringScheduleConfig:
          GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfigResponse.fromMap(
            (map['modelDeploymentMonitoringScheduleConfig']! as Map)
                .cast<String, dynamic>(),
          ),
      modelMonitoringAlertConfig:
          GoogleCloudAiplatformV1ModelMonitoringAlertConfigResponse.fromMap(
            (map['modelMonitoringAlertConfig']! as Map).cast<String, dynamic>(),
          ),
      name: map['name'] as String,
      nextScheduleTime: map['nextScheduleTime'] as String,
      predictInstanceSchemaUri: map['predictInstanceSchemaUri'] as String,
      samplePredictInstance: map['samplePredictInstance'],
      scheduleState: map['scheduleState'] as String,
      state: map['state'] as String,
      statsAnomaliesBaseDirectory:
          GoogleCloudAiplatformV1GcsDestinationResponse.fromMap(
            (map['statsAnomaliesBaseDirectory']! as Map)
                .cast<String, dynamic>(),
          ),
      updateTime: map['updateTime'] as String,
    );
  }
}
