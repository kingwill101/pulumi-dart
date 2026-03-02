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
    this.key,
    this.project,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'project': ?project,
      'value': ?value,
    };
  }

  factory ProjectMetadataItemState.fromMap(Map<String, dynamic> map) {
    return ProjectMetadataItemState(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

