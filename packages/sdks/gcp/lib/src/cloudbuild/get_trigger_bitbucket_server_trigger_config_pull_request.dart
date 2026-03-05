// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerBitbucketServerTriggerConfigPullRequest {
  /// Regex of branches to match.
  /// The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String> branch;
  /// Configure builds to run whether a repository owner or collaborator need to comment /gcbrun. Possible values: ["COMMENTS_DISABLED", "COMMENTS_ENABLED", "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"]
  final pulumi.Input<String> commentControl;
  /// If true, branches that do NOT match the git_ref will trigger a build.
  final pulumi.Input<bool> invertRegex;

  /// Creates a new [GetTriggerBitbucketServerTriggerConfigPullRequest].
  /// [branch] Regex of branches to match.
  /// [commentControl] Configure builds to run whether a repository owner or collaborator need to comment /gcbrun. Possible values: ["COMMENTS_DISABLED", "COMMENTS_ENABLED", "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"]
  /// [invertRegex] If true, branches that do NOT match the git_ref will trigger a build.
  GetTriggerBitbucketServerTriggerConfigPullRequest({
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

  factory GetTriggerBitbucketServerTriggerConfigPullRequest.fromMap(Map<String, dynamic> map) {
    return GetTriggerBitbucketServerTriggerConfigPullRequest(
      branch: pulumi.Input.fromValue(map['branch'] as String),
      commentControl: pulumi.Input.fromValue(map['commentControl'] as String),
      invertRegex: pulumi.Input.fromValue(map['invertRegex'] as bool),
    );
  }
}

