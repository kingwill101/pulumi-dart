// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProjectMetadataItem resources.
class ProjectMetadataItemState {
  /// The metadata key to set.
  final pulumi.Input<String>? key;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The value to set for the given metadata key.
  ///
  /// - - -
  final pulumi.Input<String>? value;

  /// Creates a new [ProjectMetadataItemState].
  /// [key] The metadata key to set.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [value] The value to set for the given metadata key.
  ProjectMetadataItemState({
    pulumi.Output<String>? key,
    pulumi.Output<String>? project,
    pulumi.Output<String>? value,
  }) :
      key = pulumi.Input.asOptionalInput<String>(key),
      project = pulumi.Input.asOptionalInput<String>(project),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'project': ?project,
      'value': ?value,
    };
  }

  factory ProjectMetadataItemState.fromMap(Map<String, dynamic> map) {
    return ProjectMetadataItemState(
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

