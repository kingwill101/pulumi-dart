// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Location of the source in a Google Cloud Source Repository.
class RepoSourceResponse {
  /// Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String> branchName;
  /// Explicit commit SHA to build.
  final pulumi.Input<String> commitSha;
  /// Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution.
  final pulumi.Input<String> dir;
  /// Only trigger a build if the revision regex does NOT match the revision regex.
  final pulumi.Input<bool> invertRegex;
  /// ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
  final pulumi.Input<String> project;
  /// Name of the Cloud Source Repository.
  final pulumi.Input<String> repoName;
  /// Substitutions to use in a triggered build. Should only be used with RunBuildTrigger
  final pulumi.Input<Map<String, String>> substitutions;
  /// Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String> tagName;

  /// Creates a new [RepoSourceResponse].
  /// [branchName] Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  /// [commitSha] Explicit commit SHA to build.
  /// [dir] Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution.
  /// [invertRegex] Only trigger a build if the revision regex does NOT match the revision regex.
  /// [project] ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
  /// [repoName] Name of the Cloud Source Repository.
  /// [substitutions] Substitutions to use in a triggered build. Should only be used with RunBuildTrigger
  /// [tagName] Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  const RepoSourceResponse({
    required this.branchName,
    required this.commitSha,
    required this.dir,
    required this.invertRegex,
    required this.project,
    required this.repoName,
    required this.substitutions,
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': branchName,
      'commitSha': commitSha,
      'dir': dir,
      'invertRegex': invertRegex,
      'project': project,
      'repoName': repoName,
      'substitutions': substitutions,
      'tagName': tagName,
    };
  }

  factory RepoSourceResponse.fromMap(Map<String, dynamic> map) {
    return RepoSourceResponse(
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      commitSha: pulumi.Input.fromValue(map['commitSha'] as String),
      dir: pulumi.Input.fromValue(map['dir'] as String),
      invertRegex: pulumi.Input.fromValue(map['invertRegex'] as bool),
      project: pulumi.Input.fromValue(map['project'] as String),
      repoName: pulumi.Input.fromValue(map['repoName'] as String),
      substitutions: pulumi.Input.fromValue((map['substitutions'] as Map).cast<String, String>()),
      tagName: pulumi.Input.fromValue(map['tagName'] as String),
    );
  }
}
