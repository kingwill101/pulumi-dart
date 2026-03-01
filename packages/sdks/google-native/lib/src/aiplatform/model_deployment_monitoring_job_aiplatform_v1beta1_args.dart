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
    pulumi.Output<String>? analysisInstanceSchemaUri,
    required pulumi.Output<String> displayName,
    pulumi.Output<bool>? enableMonitoringPipelineLogs,
    pulumi.Output<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec,
    required pulumi.Output<String> endpoint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? logTtl,
    required pulumi.Output<GoogleCloudAiplatformV1beta1SamplingStrategy> loggingSamplingStrategy,
    required pulumi.Output<List<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig>> modelDeploymentMonitoringObjectiveConfigs,
    required pulumi.Output<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfig> modelDeploymentMonitoringScheduleConfig,
    pulumi.Output<GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig>? modelMonitoringAlertConfig,
    pulumi.Output<String>? predictInstanceSchemaUri,
    pulumi.Output<String>? project,
    pulumi.Output<dynamic>? samplePredictInstance,
    pulumi.Output<GoogleCloudAiplatformV1beta1GcsDestination>? statsAnomaliesBaseDirectory,
  }) :
      analysisInstanceSchemaUri = pulumi.Input.asOptionalInput<String>(analysisInstanceSchemaUri),
      displayName = pulumi.Input.asInput<String>(displayName),
      enableMonitoringPipelineLogs = pulumi.Input.asOptionalInput<bool>(enableMonitoringPipelineLogs),
      encryptionSpec = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1beta1EncryptionSpec>(encryptionSpec),
      endpoint = pulumi.Input.asInput<String>(endpoint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      logTtl = pulumi.Input.asOptionalInput<String>(logTtl),
      loggingSamplingStrategy = pulumi.Input.asInput<GoogleCloudAiplatformV1beta1SamplingStrategy>(loggingSamplingStrategy),
      modelDeploymentMonitoringObjectiveConfigs = pulumi.Input.asInput<List<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig>>(modelDeploymentMonitoringObjectiveConfigs),
      modelDeploymentMonitoringScheduleConfig = pulumi.Input.asInput<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfig>(modelDeploymentMonitoringScheduleConfig),
      modelMonitoringAlertConfig = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig>(modelMonitoringAlertConfig),
      predictInstanceSchemaUri = pulumi.Input.asOptionalInput<String>(predictInstanceSchemaUri),
      project = pulumi.Input.asOptionalInput<String>(project),
      samplePredictInstance = pulumi.Input.asOptionalInput<dynamic>(samplePredictInstance),
      statsAnomaliesBaseDirectory = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1beta1GcsDestination>(statsAnomaliesBaseDirectory);

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
      analysisInstanceSchemaUri: map['analysisInstanceSchemaUri'] == null ? null : pulumi.Output.create<String>(map['analysisInstanceSchemaUri'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      enableMonitoringPipelineLogs: map['enableMonitoringPipelineLogs'] == null ? null : pulumi.Output.create<bool>(map['enableMonitoringPipelineLogs'] as bool),
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<GoogleCloudAiplatformV1beta1EncryptionSpec>(GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      endpoint: pulumi.Output.create<String>(map['endpoint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logTtl: map['logTtl'] == null ? null : pulumi.Output.create<String>(map['logTtl'] as String),
      loggingSamplingStrategy: pulumi.Output.create<GoogleCloudAiplatformV1beta1SamplingStrategy>(GoogleCloudAiplatformV1beta1SamplingStrategy.fromMap((map['loggingSamplingStrategy'] as Map).cast<String, dynamic>())),
      modelDeploymentMonitoringObjectiveConfigs: pulumi.Output.create<List<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig>>(pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig>(map['modelDeploymentMonitoringObjectiveConfigs'], (value) => GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig.fromMap((value as Map).cast<String, dynamic>()))),
      modelDeploymentMonitoringScheduleConfig: pulumi.Output.create<GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfig>(GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfig.fromMap((map['modelDeploymentMonitoringScheduleConfig'] as Map).cast<String, dynamic>())),
      modelMonitoringAlertConfig: map['modelMonitoringAlertConfig'] == null ? null : pulumi.Output.create<GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig>(GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig.fromMap((map['modelMonitoringAlertConfig'] as Map).cast<String, dynamic>())),
      predictInstanceSchemaUri: map['predictInstanceSchemaUri'] == null ? null : pulumi.Output.create<String>(map['predictInstanceSchemaUri'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      samplePredictInstance: map['samplePredictInstance'] == null ? null : pulumi.Output.create<dynamic>(map['samplePredictInstance']),
      statsAnomaliesBaseDirectory: map['statsAnomaliesBaseDirectory'] == null ? null : pulumi.Output.create<GoogleCloudAiplatformV1beta1GcsDestination>(GoogleCloudAiplatformV1beta1GcsDestination.fromMap((map['statsAnomaliesBaseDirectory'] as Map).cast<String, dynamic>())),
    );
  }
}

