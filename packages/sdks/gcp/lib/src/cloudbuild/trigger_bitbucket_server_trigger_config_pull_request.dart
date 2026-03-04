// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerBitbucketServerTriggerConfigPullRequest {
  /// Regex of branches to match.
  final pulumi.Input<String> branch;

  /// Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// Possible values are: `COMMENTS_DISABLED`, `COMMENTS_ENABLED`, `COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY`.
  final pulumi.Input<String>? commentControl;

  /// If true, branches that do NOT match the git_ref will trigger a build.
  final pulumi.Input<bool>? invertRegex;

  /// Creates a new [TriggerBitbucketServerTriggerConfigPullRequest].
  /// [branch] Regex of branches to match.
  /// [commentControl] Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// [invertRegex] If true, branches that do NOT match the git_ref will trigger a build.
  TriggerBitbucketServerTriggerConfigPullRequest({
    required this.branch,
    this.commentControl,
    this.invertRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': branch,
      'commentControl': ?commentControl,
      'invertRegex': ?invertRegex,
    };
  }

  factory TriggerBitbucketServerTriggerConfigPullRequest.fromMap(
    Map<String, dynamic> map,
  ) {
    return TriggerBitbucketServerTriggerConfigPullRequest(
      branch: pulumi.Input.fromValue(map['branch'] as String),
      commentControl: (() {
        final guardedValue = map['commentControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      invertRegex: (() {
        final guardedValue = map['invertRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
