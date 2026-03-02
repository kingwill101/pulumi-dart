// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Location of the source in a Google Cloud Source Repository.
class RepoSourceCloudfunctionsV2beta {
  /// Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String>? branchName;
  /// Explicit commit SHA to build.
  final pulumi.Input<String>? commitSha;
  /// Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution. eg. helloworld (no leading slash allowed)
  final pulumi.Input<String>? dir;
  /// ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
  final pulumi.Input<String>? project;
  /// Name of the Cloud Source Repository.
  final pulumi.Input<String>? repoName;
  /// Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String>? tagName;

  /// Creates a new [RepoSourceCloudfunctionsV2beta].
  /// [branchName] Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  /// [commitSha] Explicit commit SHA to build.
  /// [dir] Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution. eg. helloworld (no leading slash allowed)
  /// [project] ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
  /// [repoName] Name of the Cloud Source Repository.
  /// [tagName] Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  RepoSourceCloudfunctionsV2beta({
    this.branchName,
    this.commitSha,
    this.dir,
    this.project,
    this.repoName,
    this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': ?branchName,
      'commitSha': ?commitSha,
      'dir': ?dir,
      'project': ?project,
      'repoName': ?repoName,
      'tagName': ?tagName,
    };
  }

  factory RepoSourceCloudfunctionsV2beta.fromMap(Map<String, dynamic> map) {
    return RepoSourceCloudfunctionsV2beta(
      branchName: map['branchName'] == null ? null : (map['branchName']! as String).input(),
      commitSha: map['commitSha'] == null ? null : (map['commitSha']! as String).input(),
      dir: map['dir'] == null ? null : (map['dir']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      repoName: map['repoName'] == null ? null : (map['repoName']! as String).input(),
      tagName: map['tagName'] == null ? null : (map['tagName']! as String).input(),
    );
  }
}

