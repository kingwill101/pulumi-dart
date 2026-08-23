// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_folder_folder_args_doc}
/// The set of arguments for Folder.
/// {@endtemplate}
/// {@macro pulumi_dataform_folder_folder_args_doc}
class FolderArgs {
  /// Optional. The containing Folder resource name.
  /// Format: `projects/*/locations/*/folders/*` or `projects/*/locations/*/teamFolders/*`.
  final pulumi.Input<String>? containingFolder;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Required. The Folder's user-friendly name.
  final pulumi.Input<String> displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the region
  final pulumi.Input<String> region;

  /// Creates a new [FolderArgs].
  /// [containingFolder] Optional. The containing Folder resource name.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Required. The Folder's user-friendly name.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region
  const FolderArgs({
    this.containingFolder,
    this.deletionPolicy,
    required this.displayName,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containingFolder': ?containingFolder,
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'project': ?project,
      'region': region,
    };
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      containingFolder: (() { final guardedValue = map['containingFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
