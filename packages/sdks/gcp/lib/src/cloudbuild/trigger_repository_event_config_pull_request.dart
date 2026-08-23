// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerRepositoryEventConfigPullRequest {
  /// Regex of branches to match.
  final pulumi.Input<String>? branch;
  /// Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// Possible values are: `COMMENTS_DISABLED`, `COMMENTS_ENABLED`, `COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY`.
  final pulumi.Input<String>? commentControl;
  /// If true, branches that do NOT match the gitRef will trigger a build.
  final pulumi.Input<bool>? invertRegex;

  /// Creates a new [TriggerRepositoryEventConfigPullRequest].
  /// [branch] Regex of branches to match.
  /// [commentControl] Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// [invertRegex] If true, branches that do NOT match the gitRef will trigger a build.
  const TriggerRepositoryEventConfigPullRequest({
    this.branch,
    this.commentControl,
    this.invertRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'commentControl': ?commentControl,
      'invertRegex': ?invertRegex,
    };
  }

  factory TriggerRepositoryEventConfigPullRequest.fromMap(Map<String, dynamic> map) {
    return TriggerRepositoryEventConfigPullRequest(
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commentControl: (() { final guardedValue = map['commentControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invertRegex: (() { final guardedValue = map['invertRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
