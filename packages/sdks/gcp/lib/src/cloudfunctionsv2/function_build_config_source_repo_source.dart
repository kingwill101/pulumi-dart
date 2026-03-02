// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionBuildConfigSourceRepoSource {
  /// Regex matching branches to build.
  final pulumi.Input<String>? branchName;
  /// Regex matching tags to build.
  final pulumi.Input<String>? commitSha;
  /// Directory, relative to the source root, in which to run the build.
  final pulumi.Input<String>? dir;
  /// Only trigger a build if the revision regex does
  /// NOT match the revision regex.
  final pulumi.Input<bool>? invertRegex;
  /// ID of the project that owns the Cloud Source Repository. If omitted, the
  /// project ID requesting the build is assumed.
  final pulumi.Input<String>? projectId;
  /// Name of the Cloud Source Repository.
  final pulumi.Input<String>? repoName;
  /// Regex matching tags to build.
  final pulumi.Input<String>? tagName;

  /// Creates a new [FunctionBuildConfigSourceRepoSource].
  /// [branchName] Regex matching branches to build.
  /// [commitSha] Regex matching tags to build.
  /// [dir] Directory, relative to the source root, in which to run the build.
  /// [invertRegex] Only trigger a build if the revision regex does
  /// [projectId] ID of the project that owns the Cloud Source Repository. If omitted, the
  /// [repoName] Name of the Cloud Source Repository.
  /// [tagName] Regex matching tags to build.
  FunctionBuildConfigSourceRepoSource({
    this.branchName,
    this.commitSha,
    this.dir,
    this.invertRegex,
    this.projectId,
    this.repoName,
    this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': ?branchName,
      'commitSha': ?commitSha,
      'dir': ?dir,
      'invertRegex': ?invertRegex,
      'projectId': ?projectId,
      'repoName': ?repoName,
      'tagName': ?tagName,
    };
  }

  factory FunctionBuildConfigSourceRepoSource.fromMap(Map<String, dynamic> map) {
    return FunctionBuildConfigSourceRepoSource(
      branchName: map['branchName'] == null ? null : (map['branchName']! as String).input(),
      commitSha: map['commitSha'] == null ? null : (map['commitSha']! as String).input(),
      dir: map['dir'] == null ? null : (map['dir']! as String).input(),
      invertRegex: map['invertRegex'] == null ? null : (map['invertRegex']! as bool).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      repoName: map['repoName'] == null ? null : (map['repoName']! as String).input(),
      tagName: map['tagName'] == null ? null : (map['tagName']! as String).input(),
    );
  }
}

