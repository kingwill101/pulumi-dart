// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_project_metadata_item_project_metadata_item_args_doc}
/// The set of arguments for ProjectMetadataItem.
/// {@endtemplate}
/// {@macro pulumi_compute_project_metadata_item_project_metadata_item_args_doc}
class ProjectMetadataItemArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The metadata key to set.
  final pulumi.Input<String> key;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The value to set for the given metadata key.
  ///
  /// - - -
  final pulumi.Input<String> value;

  /// Creates a new [ProjectMetadataItemArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [key] The metadata key to set.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [value] The value to set for the given metadata key.
  const ProjectMetadataItemArgs({
    this.deletionPolicy,
    required this.key,
    this.project,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'key': key,
      'project': ?project,
      'value': value,
    };
  }

  factory ProjectMetadataItemArgs.fromMap(Map<String, dynamic> map) {
    return ProjectMetadataItemArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
