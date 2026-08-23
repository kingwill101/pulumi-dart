// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Location of the source in a Google Cloud Source Repository.
class RepoSourceResponseCloudfunctionsV2alpha {
  /// Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String> branchName;
  /// Explicit commit SHA to build.
  final pulumi.Input<String> commitSha;
  /// Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution. eg. helloworld (no leading slash allowed)
  final pulumi.Input<String> dir;
  /// ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
  final pulumi.Input<String> project;
  /// Name of the Cloud Source Repository.
  final pulumi.Input<String> repoName;
  /// Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String> tagName;

  /// Creates a new [RepoSourceResponseCloudfunctionsV2alpha].
  /// [branchName] Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  /// [commitSha] Explicit commit SHA to build.
  /// [dir] Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution. eg. helloworld (no leading slash allowed)
  /// [project] ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
  /// [repoName] Name of the Cloud Source Repository.
  /// [tagName] Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  const RepoSourceResponseCloudfunctionsV2alpha({
    required this.branchName,
    required this.commitSha,
    required this.dir,
    required this.project,
    required this.repoName,
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': branchName,
      'commitSha': commitSha,
      'dir': dir,
      'project': project,
      'repoName': repoName,
      'tagName': tagName,
    };
  }

  factory RepoSourceResponseCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return RepoSourceResponseCloudfunctionsV2alpha(
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      commitSha: pulumi.Input.fromValue(map['commitSha'] as String),
      dir: pulumi.Input.fromValue(map['dir'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      repoName: pulumi.Input.fromValue(map['repoName'] as String),
      tagName: pulumi.Input.fromValue(map['tagName'] as String),
    );
  }
}
