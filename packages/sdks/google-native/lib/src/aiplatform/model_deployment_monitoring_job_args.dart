// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_gcs_destination.dart';
import 'google_cloud_aiplatform_v1_model_deployment_monitoring_objective_config.dart';
import 'google_cloud_aiplatform_v1_model_deployment_monitoring_schedule_config.dart';
import 'google_cloud_aiplatform_v1_model_monitoring_alert_config.dart';
import 'google_cloud_aiplatform_v1_sampling_strategy.dart';

/// {@template pulumi_aiplatform_v1_model_deployment_monitoring_job_args_doc}
/// The set of arguments for ModelDeploymentMonitoringJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_model_deployment_monitoring_job_args_doc}
class ModelDeploymentMonitoringJobArgs {
  /// YAML schema file uri describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If this field is empty, all the feature data types are inferred from predict_instance_schema_uri, meaning that TFDV will use the data in the exact format(data type) as prediction request/response. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  final pulumi.Input<String>? analysisInstanceSchemaUri;
  /// The user-defined name of the ModelDeploymentMonitoringJob. The name can be up to 128 characters long and can consist of any UTF-8 characters. Display name of a ModelDeploymentMonitoringJob.
  final pulumi.Input<String> displayName;
  /// If true, the scheduled monitoring pipeline logs are sent to Google Cloud Logging, including pipeline status and anomalies detected. Please note the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging#pricing).
  final pulumi.Input<bool>? enableMonitoringPipelineLogs;
  /// Customer-managed encryption key spec for a ModelDeploymentMonitoringJob. If set, this ModelDeploymentMonitoringJob and all sub-resources of this ModelDeploymentMonitoringJob will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;
  /// Endpoint resource name. Format: `projects/{project}/locations/{location}/endpoints/{endpoint}`
  final pulumi.Input<String> endpoint;
  /// The labels with user-defined metadata to organize your ModelDeploymentMonitoringJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The TTL of BigQuery tables in user projects which stores logs. A day is the basic unit of the TTL and we take the ceil of TTL/86400(a day). e.g. { second: 3600} indicates ttl = 1 day.
  final pulumi.Input<String>? logTtl;
  /// Sample Strategy for logging.
  final pulumi.Input<GoogleCloudAiplatformV1SamplingStrategy> loggingSamplingStrategy;
  /// The config for monitoring objectives. This is a per DeployedModel config. Each DeployedModel needs to be configured separately.
  final pulumi.Input<List<GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig>> modelDeploymentMonitoringObjectiveConfigs;
  /// Schedule config for running the monitoring job.
  final pulumi.Input<GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig> modelDeploymentMonitoringScheduleConfig;
  /// Alert config for model monitoring.
  final pulumi.Input<GoogleCloudAiplatformV1ModelMonitoringAlertConfig>? modelMonitoringAlertConfig;
  /// YAML schema file uri describing the format of a single instance, which are given to format this Endpoint's prediction (and explanation). If not set, we will generate predict schema from collected predict requests.
  final pulumi.Input<String>? predictInstanceSchemaUri;
  final pulumi.Input<String>? project;
  /// Sample Predict instance, same format as PredictRequest.instances, this can be set as a replacement of ModelDeploymentMonitoringJob.predict_instance_schema_uri. If not set, we will generate predict schema from collected predict requests.
  final pulumi.Input<dynamic>? samplePredictInstance;
  /// Stats anomalies base folder path.
  final pulumi.Input<GoogleCloudAiplatformV1GcsDestination>? statsAnomaliesBaseDirectory;

  /// Creates a new [ModelDeploymentMonitoringJobArgs].
  /// [analysisInstanceSchemaUri] YAML schema file uri describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If this field is empty, all the feature data types are inferred from predict_instance_schema_uri, meaning that TFDV will use the data in the exact format(data type) as prediction request/response. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  /// [displayName] The user-defined name of the ModelDeploymentMonitoringJob. The name can be up to 128 characters long and can consist of any UTF-8 characters. Display name of a ModelDeploymentMonitoringJob.
  /// [enableMonitoringPipelineLogs] If true, the scheduled monitoring pipeline logs are sent to Google Cloud Logging, including pipeline status and anomalies detected. Please note the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging#pricing).
  /// [encryptionSpec] Customer-managed encryption key spec for a ModelDeploymentMonitoringJob. If set, this ModelDeploymentMonitoringJob and all sub-resources of this ModelDeploymentMonitoringJob will be secured by this key.
  /// [endpoint] Endpoint resource name. Format: `projects/{project}/locations/{location}/endpoints/{endpoint}`
  /// [labels] The labels with user-defined metadata to organize your ModelDeploymentMonitoringJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [logTtl] The TTL of BigQuery tables in user projects which stores logs. A day is the basic unit of the TTL and we take the ceil of TTL/86400(a day). e.g. { second: 3600} indicates ttl = 1 day.
  /// [loggingSamplingStrategy] Sample Strategy for logging.
  /// [modelDeploymentMonitoringObjectiveConfigs] The config for monitoring objectives. This is a per DeployedModel config. Each DeployedModel needs to be configured separately.
  /// [modelDeploymentMonitoringScheduleConfig] Schedule config for running the monitoring job.
  /// [modelMonitoringAlertConfig] Alert config for model monitoring.
  /// [predictInstanceSchemaUri] YAML schema file uri describing the format of a single instance, which are given to format this Endpoint's prediction (and explanation). If not set, we will generate predict schema from collected predict requests.
  /// [project] Optional.
  /// [samplePredictInstance] Sample Predict instance, same format as PredictRequest.instances, this can be set as a replacement of ModelDeploymentMonitoringJob.predict_instance_schema_uri. If not set, we will generate predict schema from collected predict requests.
  /// [statsAnomaliesBaseDirectory] Stats anomalies base folder path.
  ModelDeploymentMonitoringJobArgs({
    this.analysisInstanceSchemaUri,
    required this.displayName,
    this.enableMonitoringPipelineLogs,
    this.encryptionSpec,
    required this.endpoint,
    this.labels,
    this.location,
    this.logTtl,
    required this.loggingSamplingStrategy,
    required this.modelDeploymentMonitoringObjectiveConfigs,
    required this.modelDeploymentMonitoringScheduleConfig,
    this.modelMonitoringAlertConfig,
    this.predictInstanceSchemaUri,
    this.project,
    this.samplePredictInstance,
    this.statsAnomaliesBaseDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisInstanceSchemaUri': ?analysisInstanceSchemaUri,
      'displayName': displayName,
      'enableMonitoringPipelineLogs': ?enableMonitoringPipelineLogs,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'endpoint': endpoint,
      'labels': ?labels,
      'location': ?location,
      'logTtl': ?logTtl,
      'loggingSamplingStrategy': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1SamplingStrategy, Map<String, dynamic>>(loggingSamplingStrategy, (value) => value.toMap()),
      'modelDeploymentMonitoringObjectiveConfigs': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig>, List<Map<String, dynamic>>>(modelDeploymentMonitoringObjectiveConfigs, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modelDeploymentMonitoringScheduleConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig, Map<String, dynamic>>(modelDeploymentMonitoringScheduleConfig, (value) => value.toMap()),
      'modelMonitoringAlertConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1ModelMonitoringAlertConfig, Map<String, dynamic>>(modelMonitoringAlertConfig, (value) => value.toMap()),
      'predictInstanceSchemaUri': ?predictInstanceSchemaUri,
      'project': ?project,
      'samplePredictInstance': ?samplePredictInstance,
      'statsAnomaliesBaseDirectory': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1GcsDestination, Map<String, dynamic>>(statsAnomaliesBaseDirectory, (value) => value.toMap()),
    };
  }

  factory ModelDeploymentMonitoringJobArgs.fromMap(Map<String, dynamic> map) {
    return ModelDeploymentMonitoringJobArgs(
      analysisInstanceSchemaUri: map['analysisInstanceSchemaUri'] == null ? null : (map['analysisInstanceSchemaUri'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      enableMonitoringPipelineLogs: map['enableMonitoringPipelineLogs'] == null ? null : (map['enableMonitoringPipelineLogs'] as bool).input(),
      encryptionSpec: map['encryptionSpec'] == null ? null : (GoogleCloudAiplatformV1EncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())).input(),
      endpoint: (map['endpoint'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logTtl: map['logTtl'] == null ? null : (map['logTtl'] as String).input(),
      loggingSamplingStrategy: (GoogleCloudAiplatformV1SamplingStrategy.fromMap((map['loggingSamplingStrategy'] as Map).cast<String, dynamic>())).input(),
      modelDeploymentMonitoringObjectiveConfigs: (pulumi.Input.decodeList<GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig>(map['modelDeploymentMonitoringObjectiveConfigs'], (value) => GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      modelDeploymentMonitoringScheduleConfig: (GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig.fromMap((map['modelDeploymentMonitoringScheduleConfig'] as Map).cast<String, dynamic>())).input(),
      modelMonitoringAlertConfig: map['modelMonitoringAlertConfig'] == null ? null : (GoogleCloudAiplatformV1ModelMonitoringAlertConfig.fromMap((map['modelMonitoringAlertConfig'] as Map).cast<String, dynamic>())).input(),
      predictInstanceSchemaUri: map['predictInstanceSchemaUri'] == null ? null : (map['predictInstanceSchemaUri'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      samplePredictInstance: map['samplePredictInstance'] == null ? null : (map['samplePredictInstance']).input(),
      statsAnomaliesBaseDirectory: map['statsAnomaliesBaseDirectory'] == null ? null : (GoogleCloudAiplatformV1GcsDestination.fromMap((map['statsAnomaliesBaseDirectory'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

