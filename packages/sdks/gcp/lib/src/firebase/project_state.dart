// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// The GCP project display name
  final pulumi.Input<String>? displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The number of the Google Project that Firebase is enabled on.
  final pulumi.Input<String>? projectNumber;

  /// Creates a new [ProjectState].
  /// [displayName] The GCP project display name
  /// [project] The ID of the project in which the resource belongs.
  /// [projectNumber] The number of the Google Project that Firebase is enabled on.
  const ProjectState({
    this.displayName,
    this.project,
    this.projectNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'project': ?project,
      'projectNumber': ?projectNumber,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectNumber: (() { final guardedValue = map['projectNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
