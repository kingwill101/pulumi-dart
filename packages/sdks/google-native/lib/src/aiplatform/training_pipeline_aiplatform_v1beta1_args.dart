// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_input_data_config.dart';
import 'google_cloud_aiplatform_v1beta1_model.dart';

/// {@template pulumi_aiplatform_v1beta1_training_pipeline_aiplatform_v1beta1_args_doc}
/// The set of arguments for TrainingPipeline.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_training_pipeline_aiplatform_v1beta1_args_doc}
class TrainingPipelineAiplatformV1beta1Args {
  /// The user-defined name of this TrainingPipeline.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for a TrainingPipeline. If set, this TrainingPipeline will be secured by this key. Note: Model trained by this TrainingPipeline is also secured by this key if model_to_upload is not set separately.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;
  /// Specifies Vertex AI owned input data that may be used for training the Model. The TrainingPipeline's training_task_definition should make clear whether this config is used and if there are any special requirements on how it should be filled. If nothing about this config is mentioned in the training_task_definition, then it should be assumed that the TrainingPipeline does not depend on this configuration.
  final pulumi.Input<GoogleCloudAiplatformV1beta1InputDataConfig>? inputDataConfig;
  /// The labels with user-defined metadata to organize TrainingPipelines. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. The ID to use for the uploaded Model, which will become the final component of the model resource name. This value may be up to 63 characters, and valid characters are `[a-z0-9_-]`. The first character cannot be a number or hyphen.
  final pulumi.Input<String>? modelId;
  /// Describes the Model that may be uploaded (via ModelService.UploadModel) by this TrainingPipeline. The TrainingPipeline's training_task_definition should make clear whether this Model description should be populated, and if there are any special requirements regarding how it should be filled. If nothing is mentioned in the training_task_definition, then it should be assumed that this field should not be filled and the training task either uploads the Model without a need of this information, or that training task does not support uploading a Model as part of the pipeline. When the Pipeline's state becomes `PIPELINE_STATE_SUCCEEDED` and the trained Model had been uploaded into Vertex AI, then the model_to_upload's resource name is populated. The Model is always uploaded into the Project and Location in which this pipeline is.
  final pulumi.Input<GoogleCloudAiplatformV1beta1Model>? modelToUpload;
  /// Optional. When specify this field, the `model_to_upload` will not be uploaded as a new model, instead, it will become a new version of this `parent_model`.
  final pulumi.Input<String>? parentModel;
  final pulumi.Input<String>? project;
  /// A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final pulumi.Input<String> trainingTaskDefinition;
  /// The training task's parameter(s), as specified in the training_task_definition's `inputs`.
  final pulumi.Input<dynamic> trainingTaskInputs;

  /// Creates a new [TrainingPipelineAiplatformV1beta1Args].
  /// [displayName] The user-defined name of this TrainingPipeline.
  /// [encryptionSpec] Customer-managed encryption key spec for a TrainingPipeline. If set, this TrainingPipeline will be secured by this key. Note: Model trained by this TrainingPipeline is also secured by this key if model_to_upload is not set separately.
  /// [inputDataConfig] Specifies Vertex AI owned input data that may be used for training the Model. The TrainingPipeline's training_task_definition should make clear whether this config is used and if there are any special requirements on how it should be filled. If nothing about this config is mentioned in the training_task_definition, then it should be assumed that the TrainingPipeline does not depend on this configuration.
  /// [labels] The labels with user-defined metadata to organize TrainingPipelines. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [modelId] Optional. The ID to use for the uploaded Model, which will become the final component of the model resource name. This value may be up to 63 characters, and valid characters are `[a-z0-9_-]`. The first character cannot be a number or hyphen.
  /// [modelToUpload] Describes the Model that may be uploaded (via ModelService.UploadModel) by this TrainingPipeline. The TrainingPipeline's training_task_definition should make clear whether this Model description should be populated, and if there are any special requirements regarding how it should be filled. If nothing is mentioned in the training_task_definition, then it should be assumed that this field should not be filled and the training task either uploads the Model without a need of this information, or that training task does not support uploading a Model as part of the pipeline. When the Pipeline's state becomes `PIPELINE_STATE_SUCCEEDED` and the trained Model had been uploaded into Vertex AI, then the model_to_upload's resource name is populated. The Model is always uploaded into the Project and Location in which this pipeline is.
  /// [parentModel] Optional. When specify this field, the `model_to_upload` will not be uploaded as a new model, instead, it will become a new version of this `parent_model`.
  /// [project] Optional.
  /// [trainingTaskDefinition] A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  /// [trainingTaskInputs] The training task's parameter(s), as specified in the training_task_definition's `inputs`.
  const TrainingPipelineAiplatformV1beta1Args({
    required this.displayName,
    this.encryptionSpec,
    this.inputDataConfig,
    this.labels,
    this.location,
    this.modelId,
    this.modelToUpload,
    this.parentModel,
    this.project,
    required this.trainingTaskDefinition,
    required this.trainingTaskInputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'inputDataConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1InputDataConfig, Map<String, dynamic>>(inputDataConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'modelId': ?modelId,
      'modelToUpload': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1Model, Map<String, dynamic>>(modelToUpload, (value) => value.toMap()),
      'parentModel': ?parentModel,
      'project': ?project,
      'trainingTaskDefinition': trainingTaskDefinition,
      'trainingTaskInputs': trainingTaskInputs,
    };
  }

  factory TrainingPipelineAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TrainingPipelineAiplatformV1beta1Args(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputDataConfig: (() { final guardedValue = map['inputDataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1InputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelToUpload: (() { final guardedValue = map['modelToUpload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1Model.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentModel: (() { final guardedValue = map['parentModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingTaskDefinition: pulumi.Input.fromValue(map['trainingTaskDefinition'] as String),
      trainingTaskInputs: pulumi.Input.fromValue(map['trainingTaskInputs']),
    );
  }
}
