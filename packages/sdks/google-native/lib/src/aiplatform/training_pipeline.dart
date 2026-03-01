import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_input_data_config_response.dart';
import 'google_cloud_aiplatform_v1_model_response.dart';
import 'google_rpc_status_response.dart';
import 'training_pipeline_args.dart';

/// Creates a TrainingPipeline. A created TrainingPipeline right away will be attempted to be run.
/// Auto-naming is currently not supported for this resource.
class TrainingPipeline extends pulumi.CustomResource {
  /// Time when the TrainingPipeline was created.
  late final pulumi.Output<String> createTime;
  /// The user-defined name of this TrainingPipeline.
  late final pulumi.Output<String> displayName;
  /// Customer-managed encryption key spec for a TrainingPipeline. If set, this TrainingPipeline will be secured by this key. Note: Model trained by this TrainingPipeline is also secured by this key if model_to_upload is not set separately.
  late final pulumi.Output<GoogleCloudAiplatformV1EncryptionSpecResponse> encryptionSpec;
  /// Time when the TrainingPipeline entered any of the following states: `PIPELINE_STATE_SUCCEEDED`, `PIPELINE_STATE_FAILED`, `PIPELINE_STATE_CANCELLED`.
  late final pulumi.Output<String> endTime;
  /// Only populated when the pipeline's state is `PIPELINE_STATE_FAILED` or `PIPELINE_STATE_CANCELLED`.
  late final pulumi.Output<GoogleRpcStatusResponse> error;
  /// Specifies Vertex AI owned input data that may be used for training the Model. The TrainingPipeline's training_task_definition should make clear whether this config is used and if there are any special requirements on how it should be filled. If nothing about this config is mentioned in the training_task_definition, then it should be assumed that the TrainingPipeline does not depend on this configuration.
  late final pulumi.Output<GoogleCloudAiplatformV1InputDataConfigResponse> inputDataConfig;
  /// The labels with user-defined metadata to organize TrainingPipelines. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Optional. The ID to use for the uploaded Model, which will become the final component of the model resource name. This value may be up to 63 characters, and valid characters are `[a-z0-9_-]`. The first character cannot be a number or hyphen.
  late final pulumi.Output<String> modelId;
  /// Describes the Model that may be uploaded (via ModelService.UploadModel) by this TrainingPipeline. The TrainingPipeline's training_task_definition should make clear whether this Model description should be populated, and if there are any special requirements regarding how it should be filled. If nothing is mentioned in the training_task_definition, then it should be assumed that this field should not be filled and the training task either uploads the Model without a need of this information, or that training task does not support uploading a Model as part of the pipeline. When the Pipeline's state becomes `PIPELINE_STATE_SUCCEEDED` and the trained Model had been uploaded into Vertex AI, then the model_to_upload's resource name is populated. The Model is always uploaded into the Project and Location in which this pipeline is.
  late final pulumi.Output<GoogleCloudAiplatformV1ModelResponse> modelToUpload;
  /// Resource name of the TrainingPipeline.
  late final pulumi.Output<String> name;
  /// Optional. When specify this field, the `model_to_upload` will not be uploaded as a new model, instead, it will become a new version of this `parent_model`.
  late final pulumi.Output<String> parentModel;
  late final pulumi.Output<String> project;
  /// Time when the TrainingPipeline for the first time entered the `PIPELINE_STATE_RUNNING` state.
  late final pulumi.Output<String> startTime;
  /// The detailed state of the pipeline.
  late final pulumi.Output<String> state;
  /// A Google Cloud Storage path to the YAML file that defines the training task which is responsible for producing the model artifact, and may also include additional auxiliary work. The definition files that can be used here are found in gs://google-cloud-aiplatform/schema/trainingjob/definition/. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  late final pulumi.Output<String> trainingTaskDefinition;
  /// The training task's parameter(s), as specified in the training_task_definition's `inputs`.
  late final pulumi.Output<dynamic> trainingTaskInputs;
  /// The metadata information as specified in the training_task_definition's `metadata`. This metadata is an auxiliary runtime and final information about the training task. While the pipeline is running this information is populated only at a best effort basis. Only present if the pipeline's training_task_definition contains `metadata` object.
  late final pulumi.Output<dynamic> trainingTaskMetadata;
  /// Time when the TrainingPipeline was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TrainingPipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrainingPipeline]. {@macro pulumi_aiplatform_v1_training_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrainingPipeline(
    String name, {
    TrainingPipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:TrainingPipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionSpec = registerOutput<GoogleCloudAiplatformV1EncryptionSpecResponse>('encryptionSpec');
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<GoogleRpcStatusResponse>('error');
    this.inputDataConfig = registerOutput<GoogleCloudAiplatformV1InputDataConfigResponse>('inputDataConfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.modelId = registerOutput<String>('modelId');
    this.modelToUpload = registerOutput<GoogleCloudAiplatformV1ModelResponse>('modelToUpload');
    this.name = registerOutput<String>('name');
    this.parentModel = registerOutput<String>('parentModel');
    this.project = registerOutput<String>('project');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.trainingTaskDefinition = registerOutput<String>('trainingTaskDefinition');
    this.trainingTaskInputs = registerOutput<dynamic>('trainingTaskInputs');
    this.trainingTaskMetadata = registerOutput<dynamic>('trainingTaskMetadata');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
