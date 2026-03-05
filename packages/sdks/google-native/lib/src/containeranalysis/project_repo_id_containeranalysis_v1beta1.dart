// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31) and a repo name within that project.
class ProjectRepoIdContaineranalysisV1beta1 {
  /// The ID of the project.
  final pulumi.Input<String>? project;
  /// The name of the repo. Leave empty for the default repo.
  final pulumi.Input<String>? repoName;

  /// Creates a new [ProjectRepoIdContaineranalysisV1beta1].
  /// [project] The ID of the project.
  /// [repoName] The name of the repo. Leave empty for the default repo.
  ProjectRepoIdContaineranalysisV1beta1({
    this.project,
    this.repoName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'repoName': ?repoName,
    };
  }

  factory ProjectRepoIdContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return ProjectRepoIdContaineranalysisV1beta1(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoName: (() { final guardedValue = map['repoName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

