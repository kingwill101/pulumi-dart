// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_batch_dedicated_resources.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_input_config.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_instance_config.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_output_config.dart';
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_explanation_spec.dart';
import 'google_cloud_aiplatform_v1_manual_batch_tuning_parameters.dart';
import 'google_cloud_aiplatform_v1_unmanaged_container_model.dart';

/// {@template pulumi_aiplatform_v1_batch_prediction_job_args_doc}
/// The set of arguments for BatchPredictionJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_batch_prediction_job_args_doc}
class BatchPredictionJobArgs {
  /// The config of resources used by the Model during the batch prediction. If the Model supports DEDICATED_RESOURCES this config may be provided (and the job will use these resources), if the Model doesn't support AUTOMATIC_RESOURCES, this config must be provided.
  final pulumi.Input<GoogleCloudAiplatformV1BatchDedicatedResources>? dedicatedResources;
  /// For custom-trained Models and AutoML Tabular Models, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging by default. Please note that the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging/pricing). User can disable container logging by setting this flag to true.
  final pulumi.Input<bool>? disableContainerLogging;
  /// The user-defined name of this BatchPredictionJob.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key options for a BatchPredictionJob. If this is set, then all resources created by the BatchPredictionJob will be encrypted with the provided encryption key.
  final pulumi.Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;
  /// Explanation configuration for this BatchPredictionJob. Can be specified only if generate_explanation is set to `true`. This value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of the explanation_spec object is not populated, the corresponding field of the Model.explanation_spec object is inherited.
  final pulumi.Input<GoogleCloudAiplatformV1ExplanationSpec>? explanationSpec;
  /// Generate explanation with the batch prediction results. When set to `true`, the batch prediction output changes based on the `predictions_format` field of the BatchPredictionJob.output_config object: * `bigquery`: output includes a column named `explanation`. The value is a struct that conforms to the Explanation object. * `jsonl`: The JSON objects on each line include an additional entry keyed `explanation`. The value of the entry is a JSON object that conforms to the Explanation object. * `csv`: Generating explanations for CSV format is not supported. If this field is set to true, either the Model.explanation_spec or explanation_spec must be populated.
  final pulumi.Input<bool>? generateExplanation;
  /// Input configuration of the instances on which predictions are performed. The schema of any single instance may be specified via the Model's PredictSchemata's instance_schema_uri.
  final pulumi.Input<GoogleCloudAiplatformV1BatchPredictionJobInputConfig> inputConfig;
  /// Configuration for how to convert batch prediction input instances to the prediction instances that are sent to the Model.
  final pulumi.Input<GoogleCloudAiplatformV1BatchPredictionJobInstanceConfig>? instanceConfig;
  /// The labels with user-defined metadata to organize BatchPredictionJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Immutable. Parameters configuring the batch behavior. Currently only applicable when dedicated_resources are used (in other cases Vertex AI does the tuning itself).
  final pulumi.Input<GoogleCloudAiplatformV1ManualBatchTuningParameters>? manualBatchTuningParameters;
  /// The name of the Model resource that produces the predictions via this job, must share the same ancestor Location. Starting this job has no impact on any existing deployments of the Model and their resources. Exactly one of model and unmanaged_container_model must be set. The model resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed. The model resource could also be a publisher model. Example: `publishers/{publisher}/models/{model}` or `projects/{project}/locations/{location}/publishers/{publisher}/models/{model}`
  final pulumi.Input<String>? model;
  /// The parameters that govern the predictions. The schema of the parameters may be specified via the Model's PredictSchemata's parameters_schema_uri.
  final pulumi.Input<dynamic>? modelParameters;
  /// The Configuration specifying where output predictions should be written. The schema of any single prediction may be specified as a concatenation of Model's PredictSchemata's instance_schema_uri and prediction_schema_uri.
  final pulumi.Input<GoogleCloudAiplatformV1BatchPredictionJobOutputConfig> outputConfig;
  final pulumi.Input<String>? project;
  /// The service account that the DeployedModel's container runs as. If not specified, a system generated one will be used, which has minimal permissions and the custom container, if used, may not have enough permission to access other Google Cloud resources. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  final pulumi.Input<String>? serviceAccount;
  /// Contains model information necessary to perform batch prediction without requiring uploading to model registry. Exactly one of model and unmanaged_container_model must be set.
  final pulumi.Input<GoogleCloudAiplatformV1UnmanagedContainerModel>? unmanagedContainerModel;

  /// Creates a new [BatchPredictionJobArgs].
  /// [dedicatedResources] The config of resources used by the Model during the batch prediction. If the Model supports DEDICATED_RESOURCES this config may be provided (and the job will use these resources), if the Model doesn't support AUTOMATIC_RESOURCES, this config must be provided.
  /// [disableContainerLogging] For custom-trained Models and AutoML Tabular Models, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging by default. Please note that the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging/pricing). User can disable container logging by setting this flag to true.
  /// [displayName] The user-defined name of this BatchPredictionJob.
  /// [encryptionSpec] Customer-managed encryption key options for a BatchPredictionJob. If this is set, then all resources created by the BatchPredictionJob will be encrypted with the provided encryption key.
  /// [explanationSpec] Explanation configuration for this BatchPredictionJob. Can be specified only if generate_explanation is set to `true`. This value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of the explanation_spec object is not populated, the corresponding field of the Model.explanation_spec object is inherited.
  /// [generateExplanation] Generate explanation with the batch prediction results. When set to `true`, the batch prediction output changes based on the `predictions_format` field of the BatchPredictionJob.output_config object: * `bigquery`: output includes a column named `explanation`. The value is a struct that conforms to the Explanation object. * `jsonl`: The JSON objects on each line include an additional entry keyed `explanation`. The value of the entry is a JSON object that conforms to the Explanation object. * `csv`: Generating explanations for CSV format is not supported. If this field is set to true, either the Model.explanation_spec or explanation_spec must be populated.
  /// [inputConfig] Input configuration of the instances on which predictions are performed. The schema of any single instance may be specified via the Model's PredictSchemata's instance_schema_uri.
  /// [instanceConfig] Configuration for how to convert batch prediction input instances to the prediction instances that are sent to the Model.
  /// [labels] The labels with user-defined metadata to organize BatchPredictionJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [manualBatchTuningParameters] Immutable. Parameters configuring the batch behavior. Currently only applicable when dedicated_resources are used (in other cases Vertex AI does the tuning itself).
  /// [model] The name of the Model resource that produces the predictions via this job, must share the same ancestor Location. Starting this job has no impact on any existing deployments of the Model and their resources. Exactly one of model and unmanaged_container_model must be set. The model resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed. The model resource could also be a publisher model. Example: `publishers/{publisher}/models/{model}` or `projects/{project}/locations/{location}/publishers/{publisher}/models/{model}`
  /// [modelParameters] The parameters that govern the predictions. The schema of the parameters may be specified via the Model's PredictSchemata's parameters_schema_uri.
  /// [outputConfig] The Configuration specifying where output predictions should be written. The schema of any single prediction may be specified as a concatenation of Model's PredictSchemata's instance_schema_uri and prediction_schema_uri.
  /// [project] Optional.
  /// [serviceAccount] The service account that the DeployedModel's container runs as. If not specified, a system generated one will be used, which has minimal permissions and the custom container, if used, may not have enough permission to access other Google Cloud resources. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  /// [unmanagedContainerModel] Contains model information necessary to perform batch prediction without requiring uploading to model registry. Exactly one of model and unmanaged_container_model must be set.
  const BatchPredictionJobArgs({
    this.dedicatedResources,
    this.disableContainerLogging,
    required this.displayName,
    this.encryptionSpec,
    this.explanationSpec,
    this.generateExplanation,
    required this.inputConfig,
    this.instanceConfig,
    this.labels,
    this.location,
    this.manualBatchTuningParameters,
    this.model,
    this.modelParameters,
    required this.outputConfig,
    this.project,
    this.serviceAccount,
    this.unmanagedContainerModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedResources': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1BatchDedicatedResources, Map<String, dynamic>>(dedicatedResources, (value) => value.toMap()),
      'disableContainerLogging': ?disableContainerLogging,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'explanationSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1ExplanationSpec, Map<String, dynamic>>(explanationSpec, (value) => value.toMap()),
      'generateExplanation': ?generateExplanation,
      'inputConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1BatchPredictionJobInputConfig, Map<String, dynamic>>(inputConfig, (value) => value.toMap()),
      'instanceConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1BatchPredictionJobInstanceConfig, Map<String, dynamic>>(instanceConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'manualBatchTuningParameters': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1ManualBatchTuningParameters, Map<String, dynamic>>(manualBatchTuningParameters, (value) => value.toMap()),
      'model': ?model,
      'modelParameters': ?modelParameters,
      'outputConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1BatchPredictionJobOutputConfig, Map<String, dynamic>>(outputConfig, (value) => value.toMap()),
      'project': ?project,
      'serviceAccount': ?serviceAccount,
      'unmanagedContainerModel': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1UnmanagedContainerModel, Map<String, dynamic>>(unmanagedContainerModel, (value) => value.toMap()),
    };
  }

  factory BatchPredictionJobArgs.fromMap(Map<String, dynamic> map) {
    return BatchPredictionJobArgs(
      dedicatedResources: (() { final guardedValue = map['dedicatedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1BatchDedicatedResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableContainerLogging: (() { final guardedValue = map['disableContainerLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1EncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      explanationSpec: (() { final guardedValue = map['explanationSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1ExplanationSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generateExplanation: (() { final guardedValue = map['generateExplanation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inputConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1BatchPredictionJobInputConfig.fromMap((map['inputConfig']! as Map).cast<String, dynamic>())),
      instanceConfig: (() { final guardedValue = map['instanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1BatchPredictionJobInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualBatchTuningParameters: (() { final guardedValue = map['manualBatchTuningParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1ManualBatchTuningParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelParameters: (() { final guardedValue = map['modelParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      outputConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1BatchPredictionJobOutputConfig.fromMap((map['outputConfig']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unmanagedContainerModel: (() { final guardedValue = map['unmanagedContainerModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1UnmanagedContainerModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

