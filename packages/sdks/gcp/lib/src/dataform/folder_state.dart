// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Folder resources.
class FolderState {
  /// Optional. The containing Folder resource name.
  /// Format: `projects/*/locations/*/folders/*` or `projects/*/locations/*/teamFolders/*`.
  final pulumi.Input<String?>? containingFolder;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Required. The Folder's user-friendly name.
  final pulumi.Input<String?>? displayName;
  /// The unique identifier for the Folder.
  final pulumi.Input<String?>? folderId;
  /// The Folder's name.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A reference to the region
  final pulumi.Input<String?>? region;

  /// Creates a new [FolderState].
  /// [containingFolder] Optional. The containing Folder resource name.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Required. The Folder's user-friendly name.
  /// [folderId] The unique identifier for the Folder.
  /// [name] The Folder's name.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region
  const FolderState({
    this.containingFolder,
    this.deletionPolicy,
    this.displayName,
    this.folderId,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containingFolder': ?containingFolder,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'folderId': ?folderId,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory FolderState.fromMap(Map<String, dynamic> map) {
    return FolderState(
      containingFolder: (() { final guardedValue = map['containingFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
