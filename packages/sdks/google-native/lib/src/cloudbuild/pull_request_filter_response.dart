// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PullRequestFilter contains filter properties for matching GitHub Pull Requests.
class PullRequestFilterResponse {
  /// Regex of branches to match. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String> branch;
  /// Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  final pulumi.Input<String> commentControl;
  /// If true, branches that do NOT match the git_ref will trigger a build.
  final pulumi.Input<bool> invertRegex;

  /// Creates a new [PullRequestFilterResponse].
  /// [branch] Regex of branches to match. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  /// [commentControl] Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// [invertRegex] If true, branches that do NOT match the git_ref will trigger a build.
  const PullRequestFilterResponse({
    required this.branch,
    required this.commentControl,
    required this.invertRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': branch,
      'commentControl': commentControl,
      'invertRegex': invertRegex,
    };
  }

  factory PullRequestFilterResponse.fromMap(Map<String, dynamic> map) {
    return PullRequestFilterResponse(
      branch: pulumi.Input.fromValue(map['branch'] as String),
      commentControl: pulumi.Input.fromValue(map['commentControl'] as String),
      invertRegex: pulumi.Input.fromValue(map['invertRegex'] as bool),
    );
  }
}
