import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_aiplatform_v1beta1_args.dart';

/// Creates a TensorboardExperiment.
/// Auto-naming is currently not supported for this resource.
class ExperimentAiplatformV1beta1 extends pulumi.CustomResource {
  /// Timestamp when this TensorboardExperiment was created.
  late final pulumi.Output<String> createTime;
  /// Description of this TensorboardExperiment.
  late final pulumi.Output<String> description;
  /// User provided name of this TensorboardExperiment.
  late final pulumi.Output<String> displayName;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;
  /// The labels with user-defined metadata to organize your TensorboardExperiment. Label keys and values cannot be longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Dataset (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `aiplatform.googleapis.com/` and are immutable. The following system labels exist for each Dataset: * `aiplatform.googleapis.com/dataset_metadata_schema`: output only. Its value is the metadata_schema's title.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Name of the TensorboardExperiment. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Immutable. Source of the TensorboardExperiment. Example: a custom training job.
  late final pulumi.Output<String> source;
  /// Required. The ID to use for the Tensorboard experiment, which becomes the final component of the Tensorboard experiment's resource name. This value should be 1-128 characters, and valid characters are `/a-z-/`.
  late final pulumi.Output<String> tensorboardExperimentId;
  late final pulumi.Output<String> tensorboardId;
  /// Timestamp when this TensorboardExperiment was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ExperimentAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExperimentAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_experiment_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExperimentAiplatformV1beta1(
    String name, {
    ExperimentAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:Experiment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    source = registerOutput<String>('source');
    tensorboardExperimentId = registerOutput<String>('tensorboardExperimentId');
    tensorboardId = registerOutput<String>('tensorboardId');
    updateTime = registerOutput<String>('updateTime');
  }
}
