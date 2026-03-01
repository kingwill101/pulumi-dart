// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_experiment_args_doc}
/// The set of arguments for Experiment.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_experiment_args_doc}
class ExperimentArgs {
  /// Description of this TensorboardExperiment.
  final pulumi.Input<String>? description;
  /// User provided name of this TensorboardExperiment.
  final pulumi.Input<String>? displayName;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// The labels with user-defined metadata to organize your TensorboardExperiment. Label keys and values cannot be longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Dataset (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `aiplatform.googleapis.com/` and are immutable. The following system labels exist for each Dataset: * `aiplatform.googleapis.com/dataset_metadata_schema`: output only. Its value is the metadata_schema's title.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Immutable. Source of the TensorboardExperiment. Example: a custom training job.
  final pulumi.Input<String>? source;
  /// Required. The ID to use for the Tensorboard experiment, which becomes the final component of the Tensorboard experiment's resource name. This value should be 1-128 characters, and valid characters are `/a-z-/`.
  final pulumi.Input<String> tensorboardExperimentId;
  final pulumi.Input<String> tensorboardId;

  /// Creates a new [ExperimentArgs].
  /// [description] Description of this TensorboardExperiment.
  /// [displayName] User provided name of this TensorboardExperiment.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] The labels with user-defined metadata to organize your TensorboardExperiment. Label keys and values cannot be longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Dataset (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `aiplatform.googleapis.com/` and are immutable. The following system labels exist for each Dataset: * `aiplatform.googleapis.com/dataset_metadata_schema`: output only. Its value is the metadata_schema's title.
  /// [location] Optional.
  /// [project] Optional.
  /// [source] Immutable. Source of the TensorboardExperiment. Example: a custom training job.
  /// [tensorboardExperimentId] Required. The ID to use for the Tensorboard experiment, which becomes the final component of the Tensorboard experiment's resource name. This value should be 1-128 characters, and valid characters are `/a-z-/`.
  /// [tensorboardId] Required.
  ExperimentArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? source,
    required pulumi.Output<String> tensorboardExperimentId,
    required pulumi.Output<String> tensorboardId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      source = pulumi.Input.asOptionalInput<String>(source),
      tensorboardExperimentId = pulumi.Input.asInput<String>(tensorboardExperimentId),
      tensorboardId = pulumi.Input.asInput<String>(tensorboardId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'source': ?source,
      'tensorboardExperimentId': tensorboardExperimentId,
      'tensorboardId': tensorboardId,
    };
  }

  factory ExperimentArgs.fromMap(Map<String, dynamic> map) {
    return ExperimentArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      tensorboardExperimentId: pulumi.Output.create<String>(map['tensorboardExperimentId'] as String),
      tensorboardId: pulumi.Output.create<String>(map['tensorboardId'] as String),
    );
  }
}

