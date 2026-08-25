// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_ai_tensorboard_run_ai_tensorboard_run_args_doc}
/// The set of arguments for AiTensorboardRun.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_tensorboard_run_ai_tensorboard_run_args_doc}
class AiTensorboardRunArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of this TensorboardRun.
  final pulumi.Input<String?>? description;
  /// User provided name of this TensorboardRun.
  /// This value must be unique among all TensorboardRuns
  /// belonging to the same parent TensorboardExperiment.
  final pulumi.Input<String> displayName;
  /// The Tensorboard Experiment ID.
  final pulumi.Input<String> experiment;
  /// The labels with user-defined metadata to organize your TensorboardRuns.
  /// This field will be used to filter and visualize Runs in the Tensorboard UI.
  /// For example, a Vertex AI training job can set a label
  /// aiplatform.googleapis.com/training_job_id=xxxxx to all the runs created
  /// within that job. An end user can set a label experiment_id=xxxxx for all
  /// the runs produced in a Jupyter notebook. These runs can be grouped by a
  /// label value and visualized together in the Tensorboard UI.
  /// Label keys and values can be no longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  /// No more than 64 user labels can be associated with one TensorboardRun
  /// (System labels are excluded).
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// System reserved label keys are prefixed with "aiplatform.googleapis.com/"
  /// and are immutable.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the Tensorboard Run. eg us-central1
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Tensorboard instance.
  final pulumi.Input<String> tensorboard;
  /// The ID to use for the Tensorboard run, which becomes the final
  /// component of the Tensorboard run's resource name.
  /// This value should be 1-128 characters, and valid characters
  /// are `/a-z-/`.
  final pulumi.Input<String> tensorboardRunId;

  /// Creates a new [AiTensorboardRunArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of this TensorboardRun.
  /// [displayName] User provided name of this TensorboardRun.
  /// [experiment] The Tensorboard Experiment ID.
  /// [labels] The labels with user-defined metadata to organize your TensorboardRuns.
  /// [location] The location of the Tensorboard Run. eg us-central1
  /// [project] The ID of the project in which the resource belongs.
  /// [tensorboard] The Tensorboard instance.
  /// [tensorboardRunId] The ID to use for the Tensorboard run, which becomes the final
  const AiTensorboardRunArgs({
    this.deletionPolicy,
    this.description,
    required this.displayName,
    required this.experiment,
    this.labels,
    required this.location,
    this.project,
    required this.tensorboard,
    required this.tensorboardRunId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'experiment': experiment,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'tensorboard': tensorboard,
      'tensorboardRunId': tensorboardRunId,
    };
  }

  factory AiTensorboardRunArgs.fromMap(Map<String, dynamic> map) {
    return AiTensorboardRunArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      experiment: pulumi.Input.fromValue(map['experiment'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tensorboard: pulumi.Input.fromValue(map['tensorboard'] as String),
      tensorboardRunId: pulumi.Input.fromValue(map['tensorboardRunId'] as String),
    );
  }
}
