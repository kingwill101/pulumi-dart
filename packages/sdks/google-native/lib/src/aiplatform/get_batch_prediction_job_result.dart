// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_batch_dedicated_resources_response.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_input_config_response.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_instance_config_response.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_output_config_response.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_output_info_response.dart';
import 'google_cloud_aiplatform_v1_completion_stats_response.dart';
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_explanation_spec_response.dart';
import 'google_cloud_aiplatform_v1_manual_batch_tuning_parameters_response.dart';
import 'google_cloud_aiplatform_v1_resources_consumed_response.dart';
import 'google_cloud_aiplatform_v1_unmanaged_container_model_response.dart';
import 'google_rpc_status_response.dart';

/// Result data returned by getBatchPredictionJob.
class GetBatchPredictionJobResult {
  /// Statistics on completed and failed prediction instances.
  final GoogleCloudAiplatformV1CompletionStatsResponse? completionStats;
  /// Time when the BatchPredictionJob was created.
  final String? createTime;
  /// The config of resources used by the Model during the batch prediction. If the Model supports DEDICATED_RESOURCES this config may be provided (and the job will use these resources), if the Model doesn't support AUTOMATIC_RESOURCES, this config must be provided.
  final GoogleCloudAiplatformV1BatchDedicatedResourcesResponse? dedicatedResources;
  /// For custom-trained Models and AutoML Tabular Models, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging by default. Please note that the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging/pricing). User can disable container logging by setting this flag to true.
  final bool? disableContainerLogging;
  /// The user-defined name of this BatchPredictionJob.
  final String? displayName;
  /// Customer-managed encryption key options for a BatchPredictionJob. If this is set, then all resources created by the BatchPredictionJob will be encrypted with the provided encryption key.
  final GoogleCloudAiplatformV1EncryptionSpecResponse? encryptionSpec;
  /// Time when the BatchPredictionJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  final String? endTime;
  /// Only populated when the job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  final GoogleRpcStatusResponse? error;
  /// Explanation configuration for this BatchPredictionJob. Can be specified only if generate_explanation is set to `true`. This value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of the explanation_spec object is not populated, the corresponding field of the Model.explanation_spec object is inherited.
  final GoogleCloudAiplatformV1ExplanationSpecResponse? explanationSpec;
  /// Generate explanation with the batch prediction results. When set to `true`, the batch prediction output changes based on the `predictions_format` field of the BatchPredictionJob.output_config object: * `bigquery`: output includes a column named `explanation`. The value is a struct that conforms to the Explanation object. * `jsonl`: The JSON objects on each line include an additional entry keyed `explanation`. The value of the entry is a JSON object that conforms to the Explanation object. * `csv`: Generating explanations for CSV format is not supported. If this field is set to true, either the Model.explanation_spec or explanation_spec must be populated.
  final bool? generateExplanation;
  /// Input configuration of the instances on which predictions are performed. The schema of any single instance may be specified via the Model's PredictSchemata's instance_schema_uri.
  final GoogleCloudAiplatformV1BatchPredictionJobInputConfigResponse? inputConfig;
  /// Configuration for how to convert batch prediction input instances to the prediction instances that are sent to the Model.
  final GoogleCloudAiplatformV1BatchPredictionJobInstanceConfigResponse? instanceConfig;
  /// The labels with user-defined metadata to organize BatchPredictionJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String>? labels;
  /// Immutable. Parameters configuring the batch behavior. Currently only applicable when dedicated_resources are used (in other cases Vertex AI does the tuning itself).
  final GoogleCloudAiplatformV1ManualBatchTuningParametersResponse? manualBatchTuningParameters;
  /// The name of the Model resource that produces the predictions via this job, must share the same ancestor Location. Starting this job has no impact on any existing deployments of the Model and their resources. Exactly one of model and unmanaged_container_model must be set. The model resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed. The model resource could also be a publisher model. Example: `publishers/{publisher}/models/{model}` or `projects/{project}/locations/{location}/publishers/{publisher}/models/{model}`
  final String? model;
  /// The parameters that govern the predictions. The schema of the parameters may be specified via the Model's PredictSchemata's parameters_schema_uri.
  final dynamic modelParameters;
  /// The version ID of the Model that produces the predictions via this job.
  final String? modelVersionId;
  /// Resource name of the BatchPredictionJob.
  final String? name;
  /// The Configuration specifying where output predictions should be written. The schema of any single prediction may be specified as a concatenation of Model's PredictSchemata's instance_schema_uri and prediction_schema_uri.
  final GoogleCloudAiplatformV1BatchPredictionJobOutputConfigResponse? outputConfig;
  /// Information further describing the output of this job.
  final GoogleCloudAiplatformV1BatchPredictionJobOutputInfoResponse? outputInfo;
  /// Partial failures encountered. For example, single files that can't be read. This field never exceeds 20 entries. Status details fields contain standard Google Cloud error details.
  final List<GoogleRpcStatusResponse>? partialFailures;
  /// Information about resources that had been consumed by this job. Provided in real time at best effort basis, as well as a final value once the job completes. Note: This field currently may be not populated for batch predictions that use AutoML Models.
  final GoogleCloudAiplatformV1ResourcesConsumedResponse? resourcesConsumed;
  /// The service account that the DeployedModel's container runs as. If not specified, a system generated one will be used, which has minimal permissions and the custom container, if used, may not have enough permission to access other Google Cloud resources. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  final String? serviceAccount;
  /// Time when the BatchPredictionJob for the first time entered the `JOB_STATE_RUNNING` state.
  final String? startTime;
  /// The detailed state of the job.
  final String? state;
  /// Contains model information necessary to perform batch prediction without requiring uploading to model registry. Exactly one of model and unmanaged_container_model must be set.
  final GoogleCloudAiplatformV1UnmanagedContainerModelResponse? unmanagedContainerModel;
  /// Time when the BatchPredictionJob was most recently updated.
  final String? updateTime;

  /// Creates a new [GetBatchPredictionJobResult].
  /// [completionStats] Statistics on completed and failed prediction instances.
  /// [createTime] Time when the BatchPredictionJob was created.
  /// [dedicatedResources] The config of resources used by the Model during the batch prediction. If the Model supports DEDICATED_RESOURCES this config may be provided (and the job will use these resources), if the Model doesn't support AUTOMATIC_RESOURCES, this config must be provided.
  /// [disableContainerLogging] For custom-trained Models and AutoML Tabular Models, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging by default. Please note that the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging/pricing). User can disable container logging by setting this flag to true.
  /// [displayName] The user-defined name of this BatchPredictionJob.
  /// [encryptionSpec] Customer-managed encryption key options for a BatchPredictionJob. If this is set, then all resources created by the BatchPredictionJob will be encrypted with the provided encryption key.
  /// [endTime] Time when the BatchPredictionJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  /// [error] Only populated when the job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  /// [explanationSpec] Explanation configuration for this BatchPredictionJob. Can be specified only if generate_explanation is set to `true`. This value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of the explanation_spec object is not populated, the corresponding field of the Model.explanation_spec object is inherited.
  /// [generateExplanation] Generate explanation with the batch prediction results. When set to `true`, the batch prediction output changes based on the `predictions_format` field of the BatchPredictionJob.output_config object: * `bigquery`: output includes a column named `explanation`. The value is a struct that conforms to the Explanation object. * `jsonl`: The JSON objects on each line include an additional entry keyed `explanation`. The value of the entry is a JSON object that conforms to the Explanation object. * `csv`: Generating explanations for CSV format is not supported. If this field is set to true, either the Model.explanation_spec or explanation_spec must be populated.
  /// [inputConfig] Input configuration of the instances on which predictions are performed. The schema of any single instance may be specified via the Model's PredictSchemata's instance_schema_uri.
  /// [instanceConfig] Configuration for how to convert batch prediction input instances to the prediction instances that are sent to the Model.
  /// [labels] The labels with user-defined metadata to organize BatchPredictionJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [manualBatchTuningParameters] Immutable. Parameters configuring the batch behavior. Currently only applicable when dedicated_resources are used (in other cases Vertex AI does the tuning itself).
  /// [model] The name of the Model resource that produces the predictions via this job, must share the same ancestor Location. Starting this job has no impact on any existing deployments of the Model and their resources. Exactly one of model and unmanaged_container_model must be set. The model resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed. The model resource could also be a publisher model. Example: `publishers/{publisher}/models/{model}` or `projects/{project}/locations/{location}/publishers/{publisher}/models/{model}`
  /// [modelParameters] The parameters that govern the predictions. The schema of the parameters may be specified via the Model's PredictSchemata's parameters_schema_uri.
  /// [modelVersionId] The version ID of the Model that produces the predictions via this job.
  /// [name] Resource name of the BatchPredictionJob.
  /// [outputConfig] The Configuration specifying where output predictions should be written. The schema of any single prediction may be specified as a concatenation of Model's PredictSchemata's instance_schema_uri and prediction_schema_uri.
  /// [outputInfo] Information further describing the output of this job.
  /// [partialFailures] Partial failures encountered. For example, single files that can't be read. This field never exceeds 20 entries. Status details fields contain standard Google Cloud error details.
  /// [resourcesConsumed] Information about resources that had been consumed by this job. Provided in real time at best effort basis, as well as a final value once the job completes. Note: This field currently may be not populated for batch predictions that use AutoML Models.
  /// [serviceAccount] The service account that the DeployedModel's container runs as. If not specified, a system generated one will be used, which has minimal permissions and the custom container, if used, may not have enough permission to access other Google Cloud resources. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  /// [startTime] Time when the BatchPredictionJob for the first time entered the `JOB_STATE_RUNNING` state.
  /// [state] The detailed state of the job.
  /// [unmanagedContainerModel] Contains model information necessary to perform batch prediction without requiring uploading to model registry. Exactly one of model and unmanaged_container_model must be set.
  /// [updateTime] Time when the BatchPredictionJob was most recently updated.
  const GetBatchPredictionJobResult({
    this.completionStats,
    this.createTime,
    this.dedicatedResources,
    this.disableContainerLogging,
    this.displayName,
    this.encryptionSpec,
    this.endTime,
    this.error,
    this.explanationSpec,
    this.generateExplanation,
    this.inputConfig,
    this.instanceConfig,
    this.labels,
    this.manualBatchTuningParameters,
    this.model,
    this.modelParameters,
    this.modelVersionId,
    this.name,
    this.outputConfig,
    this.outputInfo,
    this.partialFailures,
    this.resourcesConsumed,
    this.serviceAccount,
    this.startTime,
    this.state,
    this.unmanagedContainerModel,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionStats': ?completionStats?.toMap(),
      'createTime': ?createTime,
      'dedicatedResources': ?dedicatedResources?.toMap(),
      'disableContainerLogging': ?disableContainerLogging,
      'displayName': ?displayName,
      'encryptionSpec': ?encryptionSpec?.toMap(),
      'endTime': ?endTime,
      'error': ?error?.toMap(),
      'explanationSpec': ?explanationSpec?.toMap(),
      'generateExplanation': ?generateExplanation,
      'inputConfig': ?inputConfig?.toMap(),
      'instanceConfig': ?instanceConfig?.toMap(),
      'labels': ?labels,
      'manualBatchTuningParameters': ?manualBatchTuningParameters?.toMap(),
      'model': ?model,
      'modelParameters': ?modelParameters,
      'modelVersionId': ?modelVersionId,
      'name': ?name,
      'outputConfig': ?outputConfig?.toMap(),
      'outputInfo': ?outputInfo?.toMap(),
      'partialFailures': ?(() { final guardedValue = partialFailures; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleRpcStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourcesConsumed': ?resourcesConsumed?.toMap(),
      'serviceAccount': ?serviceAccount,
      'startTime': ?startTime,
      'state': ?state,
      'unmanagedContainerModel': ?unmanagedContainerModel?.toMap(),
      'updateTime': ?updateTime,
    };
  }

  factory GetBatchPredictionJobResult.fromMap(Map<String, dynamic> map) {
    return GetBatchPredictionJobResult(
      completionStats: (() { final guardedValue = map['completionStats']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1CompletionStatsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dedicatedResources: (() { final guardedValue = map['dedicatedResources']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1BatchDedicatedResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      disableContainerLogging: (() { final guardedValue = map['disableContainerLogging']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return GoogleRpcStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      explanationSpec: (() { final guardedValue = map['explanationSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1ExplanationSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      generateExplanation: (() { final guardedValue = map['generateExplanation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      inputConfig: (() { final guardedValue = map['inputConfig']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1BatchPredictionJobInputConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instanceConfig: (() { final guardedValue = map['instanceConfig']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1BatchPredictionJobInstanceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      manualBatchTuningParameters: (() { final guardedValue = map['manualBatchTuningParameters']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1ManualBatchTuningParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelParameters: (() { final guardedValue = map['modelParameters']; if (guardedValue == null) return null; return guardedValue; })(),
      modelVersionId: (() { final guardedValue = map['modelVersionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputConfig: (() { final guardedValue = map['outputConfig']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1BatchPredictionJobOutputConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      outputInfo: (() { final guardedValue = map['outputInfo']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1BatchPredictionJobOutputInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      partialFailures: (() { final guardedValue = map['partialFailures']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleRpcStatusResponse>(guardedValue, (value) => GoogleRpcStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourcesConsumed: (() { final guardedValue = map['resourcesConsumed']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1ResourcesConsumedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      unmanagedContainerModel: (() { final guardedValue = map['unmanagedContainerModel']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1UnmanagedContainerModelResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
