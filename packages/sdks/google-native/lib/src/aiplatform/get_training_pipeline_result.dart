// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_input_data_config_response.dart';
import 'google_cloud_aiplatform_v1_model_response.dart';
import 'google_rpc_status_response.dart';

/// Result data returned by getTrainingPipeline.
class GetTrainingPipelineResult {
  /// Time when the TrainingPipeline was created.
  final String? createTime;
  /// The user-defined name of this TrainingPipeline.
  final String? displayName;
  /// Customer-managed encryption key spec for a TrainingPipeline. If set, this TrainingPipeline will be secured by this key. Note: Model trained by this TrainingPipeline is also secured by this key if model_to_upload is not set separately.
  final GoogleCloudAiplatformV1EncryptionSpecResponse? encryptionSpec;
  /// Time when the TrainingPipeline entered any of the following states: `PIPELINE_STATE_SUCCEEDED`, `PIPELINE_STATE_FAILED`, `PIPELINE_STATE_CANCELLED`.
  final String? endTime;
  /// Only populated when the pipeline's state is `PIPELINE_STATE_FAILED` or `PIPELINE_STATE_CANCELLED`.
  final GoogleRpcStatusResponse? error;
  /// Specifies Vertex AI owned input data that may be used for training the Model. The TrainingPipeline's training_task_definition should make clear whether this config is used and if there are any special requirements on how it should be filled. If nothing about this config is mentioned in the training_task_definition, then it should be assumed that the TrainingPipeline does not depend on this configuration.
  final GoogleCloudAiplatformV1InputDataConfigResponse? inputDataConfig;
  /// The labels with user-defined metadata to organize TrainingPipelines. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String>? labels;
  /// Optional. The ID to use for the uploaded Model, which will become the final component of the model resource name. This value may be up to 63 characters, and valid characters are `[a-z0-9_-]`. The first character cannot be a number or hyphen.
  final String? modelId;
  /// Describes the Model that may be uploaded (via ModelService.UploadModel) by this TrainingPipeline. The TrainingPipeline's training_task_definition should make clear whether this Model description should be populated, and if there are any special requirements regarding how it should be filled. If nothing is mentioned in the training_task_definition, then it should be assumed that this field should not be filled and the training task either uploads the Model without a need of this information, or that training task does not support uploading a Model as part of the pipeline. When the Pipeline's state becomes `PIPELINE_STATE_SUCCEEDED` and the trained Model had been uploaded into Vertex AI, then the model_to_upload's resource name is populated. The Model is always uploaded into the Project and Location in which this pipeline is.
  final GoogleCloudAiplatformV1ModelResponse? modelToUpload;
  /// Resource name of the TrainingPipeline.
  final String? name;
  /// Optional. When specify this field, the `model_to_upload` will not be uploaded as a new model, instead, it will become a new version of this `parent_model`.
  final String? parentModel;
  /// Time when the TrainingPipeline for the first time entered the `PIPELINE_STATE_RUNNING` state.
  final String? startTime;
  /// The detailed state of the pipeline.
  final String? state;
  /// A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final String? trainingTaskDefinition;
  /// The training task's parameter(s), as specified in the training_task_definition's `inputs`.
  final dynamic trainingTaskInputs;
  /// The metadata information as specified in the training_task_definition's `metadata`. This metadata is an auxiliary runtime and final information about the training task. While the pipeline is running this information is populated only at a best effort basis. Only present if the pipeline's training_task_definition contains `metadata` object.
  final dynamic trainingTaskMetadata;
  /// Time when the TrainingPipeline was most recently updated.
  final String? updateTime;

  /// Creates a new [GetTrainingPipelineResult].
  /// [createTime] Time when the TrainingPipeline was created.
  /// [displayName] The user-defined name of this TrainingPipeline.
  /// [encryptionSpec] Customer-managed encryption key spec for a TrainingPipeline. If set, this TrainingPipeline will be secured by this key. Note: Model trained by this TrainingPipeline is also secured by this key if model_to_upload is not set separately.
  /// [endTime] Time when the TrainingPipeline entered any of the following states: `PIPELINE_STATE_SUCCEEDED`, `PIPELINE_STATE_FAILED`, `PIPELINE_STATE_CANCELLED`.
  /// [error] Only populated when the pipeline's state is `PIPELINE_STATE_FAILED` or `PIPELINE_STATE_CANCELLED`.
  /// [inputDataConfig] Specifies Vertex AI owned input data that may be used for training the Model. The TrainingPipeline's training_task_definition should make clear whether this config is used and if there are any special requirements on how it should be filled. If nothing about this config is mentioned in the training_task_definition, then it should be assumed that the TrainingPipeline does not depend on this configuration.
  /// [labels] The labels with user-defined metadata to organize TrainingPipelines. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [modelId] Optional. The ID to use for the uploaded Model, which will become the final component of the model resource name. This value may be up to 63 characters, and valid characters are `[a-z0-9_-]`. The first character cannot be a number or hyphen.
  /// [modelToUpload] Describes the Model that may be uploaded (via ModelService.UploadModel) by this TrainingPipeline. The TrainingPipeline's training_task_definition should make clear whether this Model description should be populated, and if there are any special requirements regarding how it should be filled. If nothing is mentioned in the training_task_definition, then it should be assumed that this field should not be filled and the training task either uploads the Model without a need of this information, or that training task does not support uploading a Model as part of the pipeline. When the Pipeline's state becomes `PIPELINE_STATE_SUCCEEDED` and the trained Model had been uploaded into Vertex AI, then the model_to_upload's resource name is populated. The Model is always uploaded into the Project and Location in which this pipeline is.
  /// [name] Resource name of the TrainingPipeline.
  /// [parentModel] Optional. When specify this field, the `model_to_upload` will not be uploaded as a new model, instead, it will become a new version of this `parent_model`.
  /// [startTime] Time when the TrainingPipeline for the first time entered the `PIPELINE_STATE_RUNNING` state.
  /// [state] The detailed state of the pipeline.
  /// [trainingTaskDefinition] A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  /// [trainingTaskInputs] The training task's parameter(s), as specified in the training_task_definition's `inputs`.
  /// [trainingTaskMetadata] The metadata information as specified in the training_task_definition's `metadata`. This metadata is an auxiliary runtime and final information about the training task. While the pipeline is running this information is populated only at a best effort basis. Only present if the pipeline's training_task_definition contains `metadata` object.
  /// [updateTime] Time when the TrainingPipeline was most recently updated.
  const GetTrainingPipelineResult({
    this.createTime,
    this.displayName,
    this.encryptionSpec,
    this.endTime,
    this.error,
    this.inputDataConfig,
    this.labels,
    this.modelId,
    this.modelToUpload,
    this.name,
    this.parentModel,
    this.startTime,
    this.state,
    this.trainingTaskDefinition,
    this.trainingTaskInputs,
    this.trainingTaskMetadata,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'encryptionSpec': ?encryptionSpec?.toMap(),
      'endTime': ?endTime,
      'error': ?error?.toMap(),
      'inputDataConfig': ?inputDataConfig?.toMap(),
      'labels': ?labels,
      'modelId': ?modelId,
      'modelToUpload': ?modelToUpload?.toMap(),
      'name': ?name,
      'parentModel': ?parentModel,
      'startTime': ?startTime,
      'state': ?state,
      'trainingTaskDefinition': ?trainingTaskDefinition,
      'trainingTaskInputs': ?trainingTaskInputs,
      'trainingTaskMetadata': ?trainingTaskMetadata,
      'updateTime': ?updateTime,
    };
  }

  factory GetTrainingPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetTrainingPipelineResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return GoogleRpcStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      inputDataConfig: (() { final guardedValue = map['inputDataConfig']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1InputDataConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelToUpload: (() { final guardedValue = map['modelToUpload']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1ModelResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentModel: (() { final guardedValue = map['parentModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trainingTaskDefinition: (() { final guardedValue = map['trainingTaskDefinition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trainingTaskInputs: (() { final guardedValue = map['trainingTaskInputs']; if (guardedValue == null) return null; return guardedValue; })(),
      trainingTaskMetadata: (() { final guardedValue = map['trainingTaskMetadata']; if (guardedValue == null) return null; return guardedValue; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
