// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_training_pipeline_encryption_spec.dart';
import 'ai_training_pipeline_input_data_config.dart';
import 'ai_training_pipeline_model_to_upload.dart';

/// {@template pulumi_vertex_ai_training_pipeline_ai_training_pipeline_args_doc}
/// The set of arguments for AiTrainingPipeline.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_training_pipeline_ai_training_pipeline_args_doc}
class AiTrainingPipelineArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The user-defined name of this TrainingPipeline.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for a TrainingPipeline.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineEncryptionSpec?>? encryptionSpec;
  /// Specifies Vertex AI owned input data that may be used for training the Model.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineInputDataConfig?>? inputDataConfig;
  /// The labels with user-defined metadata to organize TrainingPipelines.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The ID to use for the uploaded Model, which will become the final component of the model resource name.
  final pulumi.Input<String> modelId;
  /// Describes the Model that may be uploaded by this TrainingPipeline.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineModelToUpload?>? modelToUpload;
  /// When specified, the modelToUpload will become a new version of this parent_model.
  final pulumi.Input<String?>? parentModel;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the training pipeline. eg us-central1
  final pulumi.Input<String?>? region;
  /// A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/.
  final pulumi.Input<String> trainingTaskDefinition;
  /// The training task's parameter(s), as specified in the training_task_definition's inputs. This field uses JSON data as a string.
  final pulumi.Input<String> trainingTaskInputs;

  /// Creates a new [AiTrainingPipelineArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The user-defined name of this TrainingPipeline.
  /// [encryptionSpec] Customer-managed encryption key spec for a TrainingPipeline.
  /// [inputDataConfig] Specifies Vertex AI owned input data that may be used for training the Model.
  /// [labels] The labels with user-defined metadata to organize TrainingPipelines.
  /// [modelId] The ID to use for the uploaded Model, which will become the final component of the model resource name.
  /// [modelToUpload] Describes the Model that may be uploaded by this TrainingPipeline.
  /// [parentModel] When specified, the modelToUpload will become a new version of this parent_model.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the training pipeline. eg us-central1
  /// [trainingTaskDefinition] A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/.
  /// [trainingTaskInputs] The training task's parameter(s), as specified in the training_task_definition's inputs. This field uses JSON data as a string.
  const AiTrainingPipelineArgs({
    this.deletionPolicy,
    required this.displayName,
    this.encryptionSpec,
    this.inputDataConfig,
    this.labels,
    required this.modelId,
    this.modelToUpload,
    this.parentModel,
    this.project,
    this.region,
    required this.trainingTaskDefinition,
    required this.trainingTaskInputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'inputDataConfig': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineInputDataConfig, Map<String, dynamic>>(inputDataConfig, (value) => value.toMap()),
      'labels': ?labels,
      'modelId': modelId,
      'modelToUpload': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineModelToUpload, Map<String, dynamic>>(modelToUpload, (value) => value.toMap()),
      'parentModel': ?parentModel,
      'project': ?project,
      'region': ?region,
      'trainingTaskDefinition': trainingTaskDefinition,
      'trainingTaskInputs': trainingTaskInputs,
    };
  }

  factory AiTrainingPipelineArgs.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputDataConfig: (() { final guardedValue = map['inputDataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      modelToUpload: (() { final guardedValue = map['modelToUpload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineModelToUpload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentModel: (() { final guardedValue = map['parentModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingTaskDefinition: pulumi.Input.fromValue(map['trainingTaskDefinition'] as String),
      trainingTaskInputs: pulumi.Input.fromValue(map['trainingTaskInputs'] as String),
    );
  }
}
