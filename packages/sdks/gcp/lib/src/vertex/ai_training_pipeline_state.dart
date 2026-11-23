// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_training_pipeline_encryption_spec.dart';
import 'ai_training_pipeline_error.dart';
import 'ai_training_pipeline_input_data_config.dart';
import 'ai_training_pipeline_model_to_upload.dart';

/// Input properties used for looking up and filtering AiTrainingPipeline resources.
class AiTrainingPipelineState {
  /// Time when the TrainingPipeline was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The user-defined name of this TrainingPipeline.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Customer-managed encryption key spec for a TrainingPipeline.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineEncryptionSpec?>? encryptionSpec;
  /// Time when the TrainingPipeline entered any of the following states: PIPELINE_STATE_SUCCEEDED, PIPELINE_STATE_FAILED, PIPELINE_STATE_CANCELLED.
  final pulumi.Input<String?>? endTime;
  /// Only populated when the pipeline's state is PIPELINE_STATE_FAILED or PIPELINE_STATE_CANCELLED.
  /// Structure is documented below.
  final pulumi.Input<List<AiTrainingPipelineError>?>? errors;
  /// Specifies Vertex AI owned input data that may be used for training the Model.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineInputDataConfig?>? inputDataConfig;
  /// The labels with user-defined metadata to organize TrainingPipelines.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The ID to use for the uploaded Model, which will become the final component of the model resource name.
  final pulumi.Input<String?>? modelId;
  /// Describes the Model that may be uploaded by this TrainingPipeline.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineModelToUpload?>? modelToUpload;
  /// The resource name of the TrainingPipeline.
  final pulumi.Input<String?>? name;
  /// When specified, the modelToUpload will become a new version of this parent_model.
  final pulumi.Input<String?>? parentModel;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The region of the training pipeline. eg us-central1
  final pulumi.Input<String?>? region;
  /// Time when the TrainingPipeline for the first time entered the PIPELINE_STATE_RUNNING state.
  final pulumi.Input<String?>? startTime;
  /// The detailed state of the pipeline.
  final pulumi.Input<String?>? state;
  /// A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/.
  final pulumi.Input<String?>? trainingTaskDefinition;
  /// The training task's parameter(s), as specified in the training_task_definition's inputs. This field uses JSON data as a string.
  final pulumi.Input<String?>? trainingTaskInputs;
  /// The metadata information as specified in the training_task_definition's metadata.
  final pulumi.Input<String?>? trainingTaskMetadata;
  /// Time when the TrainingPipeline was most recently updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AiTrainingPipelineState].
  /// [createTime] Time when the TrainingPipeline was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The user-defined name of this TrainingPipeline.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionSpec] Customer-managed encryption key spec for a TrainingPipeline.
  /// [endTime] Time when the TrainingPipeline entered any of the following states: PIPELINE_STATE_SUCCEEDED, PIPELINE_STATE_FAILED, PIPELINE_STATE_CANCELLED.
  /// [errors] Only populated when the pipeline's state is PIPELINE_STATE_FAILED or PIPELINE_STATE_CANCELLED.
  /// [inputDataConfig] Specifies Vertex AI owned input data that may be used for training the Model.
  /// [labels] The labels with user-defined metadata to organize TrainingPipelines.
  /// [modelId] The ID to use for the uploaded Model, which will become the final component of the model resource name.
  /// [modelToUpload] Describes the Model that may be uploaded by this TrainingPipeline.
  /// [name] The resource name of the TrainingPipeline.
  /// [parentModel] When specified, the modelToUpload will become a new version of this parent_model.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the training pipeline. eg us-central1
  /// [startTime] Time when the TrainingPipeline for the first time entered the PIPELINE_STATE_RUNNING state.
  /// [state] The detailed state of the pipeline.
  /// [trainingTaskDefinition] A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/.
  /// [trainingTaskInputs] The training task's parameter(s), as specified in the training_task_definition's inputs. This field uses JSON data as a string.
  /// [trainingTaskMetadata] The metadata information as specified in the training_task_definition's metadata.
  /// [updateTime] Time when the TrainingPipeline was most recently updated.
  const AiTrainingPipelineState({
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.encryptionSpec,
    this.endTime,
    this.errors,
    this.inputDataConfig,
    this.labels,
    this.modelId,
    this.modelToUpload,
    this.name,
    this.parentModel,
    this.project,
    this.pulumiLabels,
    this.region,
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
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'endTime': ?endTime,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<AiTrainingPipelineError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AiTrainingPipelineError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputDataConfig': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineInputDataConfig, Map<String, dynamic>>(inputDataConfig, (value) => value.toMap()),
      'labels': ?labels,
      'modelId': ?modelId,
      'modelToUpload': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineModelToUpload, Map<String, dynamic>>(modelToUpload, (value) => value.toMap()),
      'name': ?name,
      'parentModel': ?parentModel,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'startTime': ?startTime,
      'state': ?state,
      'trainingTaskDefinition': ?trainingTaskDefinition,
      'trainingTaskInputs': ?trainingTaskInputs,
      'trainingTaskMetadata': ?trainingTaskMetadata,
      'updateTime': ?updateTime,
    };
  }

  factory AiTrainingPipelineState.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiTrainingPipelineError>(guardedValue, (value) => AiTrainingPipelineError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputDataConfig: (() { final guardedValue = map['inputDataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelToUpload: (() { final guardedValue = map['modelToUpload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineModelToUpload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentModel: (() { final guardedValue = map['parentModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingTaskDefinition: (() { final guardedValue = map['trainingTaskDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingTaskInputs: (() { final guardedValue = map['trainingTaskInputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingTaskMetadata: (() { final guardedValue = map['trainingTaskMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
