// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RepoSource describes the location of the source in a Google Cloud Source Repository.
class RepoSource {
  /// Name of the branch to build.
  final pulumi.Input<String>? branchName;

  /// Explicit commit SHA to build.
  final pulumi.Input<String>? commitSha;

  /// ID of the project that owns the repo.
  final pulumi.Input<String>? project;

  /// Name of the repo.
  final pulumi.Input<String>? repoName;

  /// Name of the tag to build.
  final pulumi.Input<String>? tagName;

  /// Creates a new [RepoSource].
  /// [branchName] Name of the branch to build.
  /// [commitSha] Explicit commit SHA to build.
  /// [project] ID of the project that owns the repo.
  /// [repoName] Name of the repo.
  /// [tagName] Name of the tag to build.
  RepoSource({
    this.branchName,
    this.commitSha,
    this.project,
    this.repoName,
    this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': ?branchName,
      'commitSha': ?commitSha,
      'project': ?project,
      'repoName': ?repoName,
      'tagName': ?tagName,
    };
  }

  factory RepoSource.fromMap(Map<String, dynamic> map) {
    return RepoSource(
      branchName: (() {
        final guardedValue = map['branchName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      commitSha: (() {
        final guardedValue = map['commitSha'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repoName: (() {
        final guardedValue = map['repoName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagName: (() {
        final guardedValue = map['tagName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
