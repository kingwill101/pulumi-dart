// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_destination.dart';
import 'google_cloud_aiplatform_v1beta1_model_deployment_monitoring_objective_config.dart';
import 'google_cloud_aiplatform_v1beta1_model_deployment_monitoring_schedule_config.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_alert_config.dart';
import 'google_cloud_aiplatform_v1beta1_sampling_strategy.dart';

/// {@template pulumi_aiplatform_v1beta1_model_deployment_monitoring_job_aiplatform_v1beta1_args_doc}
/// The set of arguments for ModelDeploymentMonitoringJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_model_deployment_monitoring_job_aiplatform_v1beta1_args_doc}
class ModelDeploymentMonitoringJobAiplatformV1beta1Args {
  /// YAML schema file uri describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If this field is empty, all the feature data types are inferred from predict_instance_schema_uri, meaning that TFDV will use the data in the exact format(data type) as prediction request/response. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  final pulumi.Input<String>? analysisInstanceSchemaUri;
  /// The user-defined name of the ModelDeploymentMonitoringJob. The name can be up to 128 characters long and can consist of any UTF-8 characters. Display name of a ModelDeploymentMonitoringJob.
  final pulumi.Input<String> displayName;
  /// If true, the scheduled monitoring pipeline logs are sent to Google Cloud Logging, including pipeline status and anomalies detected. Please note the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging#pricing).
  final pulumi.Input<bool>? enableMonitoringPipelineLogs;
  /// Customer-managed encryption key spec for a ModelDeploymentMonitoringJob. If set, this ModelDeploymentMonitoringJob and all sub-resources of this ModelDeploymentMonitoringJob will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;
  /// Endpoint resource name. Format: `projects/{project}/locations/{location}/endpoints/{endpoint}`
  final pulumi.Input<String> endpoint;
  /// The labels with user-defined metadata to organize your ModelDeploymentMonitoringJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The TTL of BigQuery tables in user projects which stores logs. A day is the basic unit of the TTL and we take the ceil of TTL/86400(a day). e.g. { second: 3600} indicates ttl = 1 day.
  final pulumi.Input<String>? logTtl;
  /// Sample Strategy for logging.
  final pulumi.Input<GoogleCloudAiplatformV1beta1SamplingStrategy> loggingSamplingStrategy;
  /// The config for monitoring objectives. This is a per DeployedModel config. Each DeployedModel needs to be configured separately.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig>> modelDeploymentMonitoringObjectiveConfigs;
  /// Schedule config for running the monitoring job.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfig> modelDeploymentMonitoringScheduleConfig;
  /// Alert config for model monitoring.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig>? modelMonitoringAlertConfig;
  /// YAML schema file uri describing the format of a single instance, which are given to format this Endpoint's prediction (and explanation). If not set, we will generate predict schema from collected predict requests.
  final pulumi.Input<String>? predictInstanceSchemaUri;
  final pulumi.Input<String>? project;
  /// Sample Predict instance, same format as PredictRequest.instances, this can be set as a replacement of ModelDeploymentMonitoringJob.predict_instance_schema_uri. If not set, we will generate predict schema from collected predict requests.
  final pulumi.Input<dynamic>? samplePredictInstance;
  /// Stats anomalies base folder path.
  final pulumi.Input<GoogleCloudAiplatformV1beta1GcsDestination>? statsAnomaliesBaseDirectory;

  /// Creates a new [ModelDeploymentMonitoringJobAiplatformV1beta1Args].
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
  ModelDeploymentMonitoringJobAiplatformV1beta1Args({
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
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'endpoint': endpoint,
      'labels': ?labels,
      'location': ?location,
      'logTtl': ?logTtl,
      'loggingSamplingStrategy': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1SamplingStrategy, Map<String, dynamic>>(loggingSamplingStrategy, (value) => value.toMap()),
      'modelDeploymentMonitoringObjectiveConfigs': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig>, List<Map<String, dynamic>>>(modelDeploymentMonitoringObjectiveConfigs, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modelDeploymentMonitoringScheduleConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfig, Map<String, dynamic>>(modelDeploymentMonitoringScheduleConfig, (value) => value.toMap()),
      'modelMonitoringAlertConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig, Map<String, dynamic>>(modelMonitoringAlertConfig, (value) => value.toMap()),
      'predictInstanceSchemaUri': ?predictInstanceSchemaUri,
      'project': ?project,
      'samplePredictInstance': ?samplePredictInstance,
      'statsAnomaliesBaseDirectory': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1GcsDestination, Map<String, dynamic>>(statsAnomaliesBaseDirectory, (value) => value.toMap()),
    };
  }

  factory ModelDeploymentMonitoringJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ModelDeploymentMonitoringJobAiplatformV1beta1Args(
      analysisInstanceSchemaUri: (() { final guardedValue = map['analysisInstanceSchemaUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enableMonitoringPipelineLogs: (() { final guardedValue = map['enableMonitoringPipelineLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logTtl: (() { final guardedValue = map['logTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingSamplingStrategy: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1SamplingStrategy.fromMap((map['loggingSamplingStrategy']! as Map).cast<String, dynamic>())),
      modelDeploymentMonitoringObjectiveConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig>(map['modelDeploymentMonitoringObjectiveConfigs']!, (value) => GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig.fromMap((value as Map).cast<String, dynamic>()))),
      modelDeploymentMonitoringScheduleConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfig.fromMap((map['modelDeploymentMonitoringScheduleConfig']! as Map).cast<String, dynamic>())),
      modelMonitoringAlertConfig: (() { final guardedValue = map['modelMonitoringAlertConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predictInstanceSchemaUri: (() { final guardedValue = map['predictInstanceSchemaUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samplePredictInstance: (() { final guardedValue = map['samplePredictInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      statsAnomaliesBaseDirectory: (() { final guardedValue = map['statsAnomaliesBaseDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1GcsDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

