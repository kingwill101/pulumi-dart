// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerGithubPullRequest {
  /// Regex of branches to match.
  final pulumi.Input<String> branch;
  /// Whether to block builds on a "/gcbrun" comment from a repository owner or collaborator. Possible values: ["COMMENTS_DISABLED", "COMMENTS_ENABLED", "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"]
  final pulumi.Input<String> commentControl;
  /// If true, branches that do NOT match the git_ref will trigger a build.
  final pulumi.Input<bool> invertRegex;

  /// Creates a new [GetTriggerGithubPullRequest].
  /// [branch] Regex of branches to match.
  /// [commentControl] Whether to block builds on a "/gcbrun" comment from a repository owner or collaborator. Possible values: ["COMMENTS_DISABLED", "COMMENTS_ENABLED", "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"]
  /// [invertRegex] If true, branches that do NOT match the git_ref will trigger a build.
  GetTriggerGithubPullRequest({
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

  factory GetTriggerGithubPullRequest.fromMap(Map<String, dynamic> map) {
    return GetTriggerGithubPullRequest(
      branch: (map['branch'] as String).input(),
      commentControl: (map['commentControl'] as String).input(),
      invertRegex: (map['invertRegex'] as bool).input(),
    );
  }
}

