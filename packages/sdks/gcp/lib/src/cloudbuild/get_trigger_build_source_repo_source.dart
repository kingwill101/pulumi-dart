// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerBuildSourceRepoSource {
  /// Regex matching branches to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  /// The syntax of the regular expressions accepted is the syntax accepted by RE2 and
  /// described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String> branchName;

  /// Explicit commit SHA to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  final pulumi.Input<String> commitSha;

  /// Directory, relative to the source root, in which to run the build.
  /// This must be a relative path. If a step's dir is specified and is an absolute path,
  /// this value is ignored for that step's execution.
  final pulumi.Input<String> dir;

  /// Only trigger a build if the revision regex does NOT match the revision regex.
  final pulumi.Input<bool> invertRegex;

  /// ID of the project that owns the Cloud Source Repository.
  /// If omitted, the project ID requesting the build is assumed.
  final pulumi.Input<String> projectId;

  /// Name of the Cloud Source Repository.
  final pulumi.Input<String> repoName;

  /// Substitutions to use in a triggered build. Should only be used with triggers.run
  final pulumi.Input<Map<String, String>> substitutions;

  /// Regex matching tags to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  /// The syntax of the regular expressions accepted is the syntax accepted by RE2 and
  /// described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String> tagName;

  /// Creates a new [GetTriggerBuildSourceRepoSource].
  /// [branchName] Regex matching branches to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  /// [commitSha] Explicit commit SHA to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  /// [dir] Directory, relative to the source root, in which to run the build.
  /// [invertRegex] Only trigger a build if the revision regex does NOT match the revision regex.
  /// [projectId] ID of the project that owns the Cloud Source Repository.
  /// [repoName] Name of the Cloud Source Repository.
  /// [substitutions] Substitutions to use in a triggered build. Should only be used with triggers.run
  /// [tagName] Regex matching tags to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  GetTriggerBuildSourceRepoSource({
    required this.branchName,
    required this.commitSha,
    required this.dir,
    required this.invertRegex,
    required this.projectId,
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
      'projectId': projectId,
      'repoName': repoName,
      'substitutions': substitutions,
      'tagName': tagName,
    };
  }

  factory GetTriggerBuildSourceRepoSource.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildSourceRepoSource(
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      commitSha: pulumi.Input.fromValue(map['commitSha'] as String),
      dir: pulumi.Input.fromValue(map['dir'] as String),
      invertRegex: pulumi.Input.fromValue(map['invertRegex'] as bool),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      repoName: pulumi.Input.fromValue(map['repoName'] as String),
      substitutions: pulumi.Input.fromValue(
        (map['substitutions'] as Map).cast<String, String>(),
      ),
      tagName: pulumi.Input.fromValue(map['tagName'] as String),
    );
  }
}
