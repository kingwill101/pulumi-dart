// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiTensorboardExperiment resources.
class AiTensorboardExperimentState {
  /// Timestamp when this TensorboardExperiment was created.
  final pulumi.Input<String>? createTime;
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
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  final pulumi.Input<String>? location;
  /// Name of the TensorboardExperiment.
  /// Format:
  /// `projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Source of the TensorboardExperiment. Example: a custom training job.
  final pulumi.Input<String>? source;
  /// The Tensorboard instance.
  final pulumi.Input<String>? tensorboard;
  /// The ID to use for the Tensorboard experiment, which becomes the final
  /// component of the Tensorboard experiment's resource name.
  /// This value should be 1-128 characters, and valid characters
  /// are `/a-z-/`.
  final pulumi.Input<String>? tensorboardExperimentId;
  /// Timestamp when this TensorboardExperiment was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiTensorboardExperimentState].
  /// [createTime] Timestamp when this TensorboardExperiment was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of this TensorboardExperiment.
  /// [displayName] User provided name of this TensorboardExperiment.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] The labels with user-defined metadata to organize your
  /// [location] The location of the Tensorboard Experiment. eg us-central1
  /// [name] Name of the TensorboardExperiment.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [source] Source of the TensorboardExperiment. Example: a custom training job.
  /// [tensorboard] The Tensorboard instance.
  /// [tensorboardExperimentId] The ID to use for the Tensorboard experiment, which becomes the final
  /// [updateTime] Timestamp when this TensorboardExperiment was last updated.
  const AiTensorboardExperimentState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.source,
    this.tensorboard,
    this.tensorboardExperimentId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'source': ?source,
      'tensorboard': ?tensorboard,
      'tensorboardExperimentId': ?tensorboardExperimentId,
      'updateTime': ?updateTime,
    };
  }

  factory AiTensorboardExperimentState.fromMap(Map<String, dynamic> map) {
    return AiTensorboardExperimentState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tensorboard: (() { final guardedValue = map['tensorboard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tensorboardExperimentId: (() { final guardedValue = map['tensorboardExperimentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
