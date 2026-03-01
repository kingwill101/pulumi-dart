// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProjectMetadata resources.
class ProjectMetadataState {
  /// A series of key value pairs.
  ///
  /// - - -
  final pulumi.Input<Map<String, String>>? metadata;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectMetadataState].
  /// [metadata] A series of key value pairs.
  /// [project] The ID of the project in which the resource belongs. If it
  ProjectMetadataState({
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? project,
  }) :
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'project': ?project,
    };
  }

  factory ProjectMetadataState.fromMap(Map<String, dynamic> map) {
    return ProjectMetadataState(
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

