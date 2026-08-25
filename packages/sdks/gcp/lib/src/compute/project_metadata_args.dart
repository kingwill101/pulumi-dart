// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_project_metadata_project_metadata_args_doc}
/// The set of arguments for ProjectMetadata.
/// {@endtemplate}
/// {@macro pulumi_compute_project_metadata_project_metadata_args_doc}
class ProjectMetadataArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A series of key value pairs.
  ///
  /// - - -
  final pulumi.Input<Map<String, String>> metadata;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [ProjectMetadataArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [metadata] A series of key value pairs.
  /// [project] The ID of the project in which the resource belongs. If it
  const ProjectMetadataArgs({
    this.deletionPolicy,
    required this.metadata,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'metadata': metadata,
      'project': ?project,
    };
  }

  factory ProjectMetadataArgs.fromMap(Map<String, dynamic> map) {
    return ProjectMetadataArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
