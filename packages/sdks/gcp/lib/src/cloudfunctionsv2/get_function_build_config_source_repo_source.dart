// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionBuildConfigSourceRepoSource {
  /// Regex matching branches to build.
  final pulumi.Input<String> branchName;

  /// Regex matching tags to build.
  final pulumi.Input<String> commitSha;

  /// Directory, relative to the source root, in which to run the build.
  final pulumi.Input<String> dir;

  /// Only trigger a build if the revision regex does
  /// NOT match the revision regex.
  final pulumi.Input<bool> invertRegex;

  /// ID of the project that owns the Cloud Source Repository. If omitted, the
  /// project ID requesting the build is assumed.
  final pulumi.Input<String> projectId;

  /// Name of the Cloud Source Repository.
  final pulumi.Input<String> repoName;

  /// Regex matching tags to build.
  final pulumi.Input<String> tagName;

  /// Creates a new [GetFunctionBuildConfigSourceRepoSource].
  /// [branchName] Regex matching branches to build.
  /// [commitSha] Regex matching tags to build.
  /// [dir] Directory, relative to the source root, in which to run the build.
  /// [invertRegex] Only trigger a build if the revision regex does
  /// [projectId] ID of the project that owns the Cloud Source Repository. If omitted, the
  /// [repoName] Name of the Cloud Source Repository.
  /// [tagName] Regex matching tags to build.
  GetFunctionBuildConfigSourceRepoSource({
    required this.branchName,
    required this.commitSha,
    required this.dir,
    required this.invertRegex,
    required this.projectId,
    required this.repoName,
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': branchName,
      'commitSha': commitSha,
      'dir': dir,
      'invertRegex': invertRegex,
      'projectId': projectId,
      'repoName': repoName,
      'tagName': tagName,
    };
  }

  factory GetFunctionBuildConfigSourceRepoSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFunctionBuildConfigSourceRepoSource(
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      commitSha: pulumi.Input.fromValue(map['commitSha'] as String),
      dir: pulumi.Input.fromValue(map['dir'] as String),
      invertRegex: pulumi.Input.fromValue(map['invertRegex'] as bool),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      repoName: pulumi.Input.fromValue(map['repoName'] as String),
      tagName: pulumi.Input.fromValue(map['tagName'] as String),
    );
  }
}
