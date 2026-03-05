// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31) and a repo name within that project.
class ProjectRepoIdResponse {
  /// The ID of the project.
  final pulumi.Input<String> project;
  /// The name of the repo. Leave empty for the default repo.
  final pulumi.Input<String> repoName;

  /// Creates a new [ProjectRepoIdResponse].
  /// [project] The ID of the project.
  /// [repoName] The name of the repo. Leave empty for the default repo.
  ProjectRepoIdResponse({
    required this.project,
    required this.repoName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
      'repoName': repoName,
    };
  }

  factory ProjectRepoIdResponse.fromMap(Map<String, dynamic> map) {
    return ProjectRepoIdResponse(
      project: pulumi.Input.fromValue(map['project'] as String),
      repoName: pulumi.Input.fromValue(map['repoName'] as String),
    );
  }
}

