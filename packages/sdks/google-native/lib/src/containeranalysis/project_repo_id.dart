// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31) and a repo name within that project.
class ProjectRepoId {
  /// The ID of the project.
  final pulumi.Input<String>? project;
  /// The name of the repo. Leave empty for the default repo.
  final pulumi.Input<String>? repoName;

  /// Creates a new [ProjectRepoId].
  /// [project] The ID of the project.
  /// [repoName] The name of the repo. Leave empty for the default repo.
  const ProjectRepoId({
    this.project,
    this.repoName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'repoName': ?repoName,
    };
  }

  factory ProjectRepoId.fromMap(Map<String, dynamic> map) {
    return ProjectRepoId(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoName: (() { final guardedValue = map['repoName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
