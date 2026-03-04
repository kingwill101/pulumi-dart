// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pull_request_filter_comment_control.dart';

/// PullRequestFilter contains filter properties for matching GitHub Pull Requests.
class PullRequestFilter {
  /// Regex of branches to match. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String>? branch;

  /// Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  final pulumi.Input<PullRequestFilterCommentControl>? commentControl;

  /// If true, branches that do NOT match the git_ref will trigger a build.
  final pulumi.Input<bool>? invertRegex;

  /// Creates a new [PullRequestFilter].
  /// [branch] Regex of branches to match. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  /// [commentControl] Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// [invertRegex] If true, branches that do NOT match the git_ref will trigger a build.
  PullRequestFilter({this.branch, this.commentControl, this.invertRegex});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'commentControl':
          ?pulumi.Input.mapOptionalInputValue<
            PullRequestFilterCommentControl,
            String
          >(commentControl, (value) => value.wireValue),
      'invertRegex': ?invertRegex,
    };
  }

  factory PullRequestFilter.fromMap(Map<String, dynamic> map) {
    return PullRequestFilter(
      branch: (() {
        final guardedValue = map['branch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      commentControl: (() {
        final guardedValue = map['commentControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PullRequestFilterCommentControl.fromValue(guardedValue as String),
        );
      })(),
      invertRegex: (() {
        final guardedValue = map['invertRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
