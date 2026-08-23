// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_ai_tensorboard_experiment_ai_tensorboard_experiment_args_doc}
/// The set of arguments for AiTensorboardExperiment.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_tensorboard_experiment_ai_tensorboard_experiment_args_doc}
class AiTensorboardExperimentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description of this TensorboardExperiment.
  final pulumi.Input<String>? description;
  /// User provided name of this TensorboardExperiment.
  final pulumi.Input<String>? displayName;
  /// The labels with user-defined metadata to organize your
  /// TensorboardExperiment.
  /// Label keys and values cannot be longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  /// No more than 64 user labels can be associated with one Dataset (System
  /// labels are excluded).
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// System reserved label keys are prefixed with `aiplatform.googleapis.com/`
  /// and are immutable. The following system labels exist for each Dataset:
  /// * `aiplatform.googleapis.com/dataset_metadata_schema`: output only. Its
  /// value is the metadata_schema's title.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the Tensorboard Experiment. eg us-central1
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Source of the TensorboardExperiment. Example: a custom training job.
  final pulumi.Input<String>? source;
  /// The Tensorboard instance.
  final pulumi.Input<String> tensorboard;
  /// The ID to use for the Tensorboard experiment, which becomes the final
  /// component of the Tensorboard experiment's resource name.
  /// This value should be 1-128 characters, and valid characters
  /// are `/a-z-/`.
  final pulumi.Input<String> tensorboardExperimentId;

  /// Creates a new [AiTensorboardExperimentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of this TensorboardExperiment.
  /// [displayName] User provided name of this TensorboardExperiment.
  /// [labels] The labels with user-defined metadata to organize your
  /// [location] The location of the Tensorboard Experiment. eg us-central1
  /// [project] The ID of the project in which the resource belongs.
  /// [source] Source of the TensorboardExperiment. Example: a custom training job.
  /// [tensorboard] The Tensorboard instance.
  /// [tensorboardExperimentId] The ID to use for the Tensorboard experiment, which becomes the final
  const AiTensorboardExperimentArgs({
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.labels,
    required this.location,
    this.project,
    this.source,
    required this.tensorboard,
    required this.tensorboardExperimentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'source': ?source,
      'tensorboard': tensorboard,
      'tensorboardExperimentId': tensorboardExperimentId,
    };
  }

  factory AiTensorboardExperimentArgs.fromMap(Map<String, dynamic> map) {
    return AiTensorboardExperimentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tensorboard: pulumi.Input.fromValue(map['tensorboard'] as String),
      tensorboardExperimentId: pulumi.Input.fromValue(map['tensorboardExperimentId'] as String),
    );
  }
}
