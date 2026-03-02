// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerDeveloperConnectEventConfigPullRequest {
  /// Regex of branches to match.
  final pulumi.Input<String>? branch;
  /// Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// Possible values are: `COMMENTS_DISABLED`, `COMMENTS_ENABLED`, `COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY`.
  final pulumi.Input<String>? commentControl;
  /// If true, branches that do NOT match the git_ref will trigger a build.
  final pulumi.Input<bool>? invertRegex;

  /// Creates a new [TriggerDeveloperConnectEventConfigPullRequest].
  /// [branch] Regex of branches to match.
  /// [commentControl] Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// [invertRegex] If true, branches that do NOT match the git_ref will trigger a build.
  TriggerDeveloperConnectEventConfigPullRequest({
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

  factory TriggerDeveloperConnectEventConfigPullRequest.fromMap(Map<String, dynamic> map) {
    return TriggerDeveloperConnectEventConfigPullRequest(
      branch: map['branch'] == null ? null : (map['branch'] as String).input(),
      commentControl: map['commentControl'] == null ? null : (map['commentControl'] as String).input(),
      invertRegex: map['invertRegex'] == null ? null : (map['invertRegex'] as bool).input(),
    );
  }
}

