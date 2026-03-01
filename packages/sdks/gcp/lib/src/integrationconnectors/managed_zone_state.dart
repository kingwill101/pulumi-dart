// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedZone resources.
class ManagedZoneState {
  /// Time the Namespace was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Description of the resource.
  final pulumi.Input<String>? description;
  /// DNS Name of the resource.
  final pulumi.Input<String>? dns;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of Managed Zone needs to be created.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The name of the Target Project.
  final pulumi.Input<String>? targetProject;
  /// The name of the Target Project VPC Network.
  final pulumi.Input<String>? targetVpc;
  /// Time the Namespace was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ManagedZoneState].
  /// [createTime] Time the Namespace was created in UTC.
  /// [description] Description of the resource.
  /// [dns] DNS Name of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] Name of Managed Zone needs to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [targetProject] The name of the Target Project.
  /// [targetVpc] The name of the Target Project VPC Network.
  /// [updateTime] Time the Namespace was updated in UTC.
  ManagedZoneState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dns,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? targetProject,
    pulumi.Output<String>? targetVpc,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      dns = pulumi.Input.asOptionalInput<String>(dns),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      targetProject = pulumi.Input.asOptionalInput<String>(targetProject),
      targetVpc = pulumi.Input.asOptionalInput<String>(targetVpc),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'dns': ?dns,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'targetProject': ?targetProject,
      'targetVpc': ?targetVpc,
      'updateTime': ?updateTime,
    };
  }

  factory ManagedZoneState.fromMap(Map<String, dynamic> map) {
    return ManagedZoneState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dns: map['dns'] == null ? null : pulumi.Output.create<String>(map['dns'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      targetProject: map['targetProject'] == null ? null : pulumi.Output.create<String>(map['targetProject'] as String),
      targetVpc: map['targetVpc'] == null ? null : pulumi.Output.create<String>(map['targetVpc'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

