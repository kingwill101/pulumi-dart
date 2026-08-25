// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TeamFolder resources.
class TeamFolderState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Required. The TeamFolder's user-friendly name.
  final pulumi.Input<String?>? displayName;
  /// The TeamFolder's name.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A reference to the region
  final pulumi.Input<String?>? region;
  /// The unique identifier for the TeamFolder.
  final pulumi.Input<String?>? teamfolderId;

  /// Creates a new [TeamFolderState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Required. The TeamFolder's user-friendly name.
  /// [name] The TeamFolder's name.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region
  /// [teamfolderId] The unique identifier for the TeamFolder.
  const TeamFolderState({
    this.deletionPolicy,
    this.displayName,
    this.name,
    this.project,
    this.region,
    this.teamfolderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'teamfolderId': ?teamfolderId,
    };
  }

  factory TeamFolderState.fromMap(Map<String, dynamic> map) {
    return TeamFolderState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      teamfolderId: (() { final guardedValue = map['teamfolderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
