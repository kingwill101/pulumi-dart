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
    this.createTime,
    this.description,
    this.dns,
    this.effectiveLabels,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.targetProject,
    this.targetVpc,
    this.updateTime,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dns: map['dns'] == null ? null : (map['dns']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      targetProject: map['targetProject'] == null ? null : (map['targetProject']! as String).input(),
      targetVpc: map['targetVpc'] == null ? null : (map['targetVpc']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

