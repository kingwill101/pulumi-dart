// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiTensorboardRun resources.
class AiTensorboardRunState {
  /// Timestamp when this TensorboardRun was created.
  final pulumi.Input<String?>? createTime;
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
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// The Tensorboard Experiment ID.
  final pulumi.Input<String?>? experiment;
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
  final pulumi.Input<String?>? location;
  /// Name of the TensorboardRun.
  /// Format:
  /// `projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}/runs/{run}`
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The Tensorboard instance.
  final pulumi.Input<String?>? tensorboard;
  /// The ID to use for the Tensorboard run, which becomes the final
  /// component of the Tensorboard run's resource name.
  /// This value should be 1-128 characters, and valid characters
  /// are `/a-z-/`.
  final pulumi.Input<String?>? tensorboardRunId;
  /// Timestamp when this TensorboardRun was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AiTensorboardRunState].
  /// [createTime] Timestamp when this TensorboardRun was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of this TensorboardRun.
  /// [displayName] User provided name of this TensorboardRun.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [experiment] The Tensorboard Experiment ID.
  /// [labels] The labels with user-defined metadata to organize your TensorboardRuns.
  /// [location] The location of the Tensorboard Run. eg us-central1
  /// [name] Name of the TensorboardRun.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [tensorboard] The Tensorboard instance.
  /// [tensorboardRunId] The ID to use for the Tensorboard run, which becomes the final
  /// [updateTime] Timestamp when this TensorboardRun was last updated.
  const AiTensorboardRunState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.experiment,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.tensorboard,
    this.tensorboardRunId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'experiment': ?experiment,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'tensorboard': ?tensorboard,
      'tensorboardRunId': ?tensorboardRunId,
      'updateTime': ?updateTime,
    };
  }

  factory AiTensorboardRunState.fromMap(Map<String, dynamic> map) {
    return AiTensorboardRunState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      experiment: (() { final guardedValue = map['experiment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tensorboard: (() { final guardedValue = map['tensorboard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tensorboardRunId: (() { final guardedValue = map['tensorboardRunId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
