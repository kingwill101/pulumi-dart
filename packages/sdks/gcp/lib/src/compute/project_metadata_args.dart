// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_project_metadata_project_metadata_args_doc}
/// The set of arguments for ProjectMetadata.
/// {@endtemplate}
/// {@macro pulumi_compute_project_metadata_project_metadata_args_doc}
class ProjectMetadataArgs {
  /// A series of key value pairs.
  ///
  /// - - -
  final pulumi.Input<Map<String, String>> metadata;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectMetadataArgs].
  /// [metadata] A series of key value pairs.
  /// [project] The ID of the project in which the resource belongs. If it
  ProjectMetadataArgs({
    required this.metadata,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': metadata,
      'project': ?project,
    };
  }

  factory ProjectMetadataArgs.fromMap(Map<String, dynamic> map) {
    return ProjectMetadataArgs(
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

