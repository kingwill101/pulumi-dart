// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerGithubPush {
  /// Regex of branches to match.
  final pulumi.Input<String>? branch;
  /// If true, only trigger a build if the revision regex does NOT match the gitRef regex.
  final pulumi.Input<bool>? invertRegex;
  /// Regex of tags to match.
  final pulumi.Input<String>? tag;

  /// Creates a new [TriggerGithubPush].
  /// [branch] Regex of branches to match.
  /// [invertRegex] If true, only trigger a build if the revision regex does NOT match the gitRef regex.
  /// [tag] Regex of tags to match.
  const TriggerGithubPush({
    this.branch,
    this.invertRegex,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'invertRegex': ?invertRegex,
      'tag': ?tag,
    };
  }

  factory TriggerGithubPush.fromMap(Map<String, dynamic> map) {
    return TriggerGithubPush(
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invertRegex: (() { final guardedValue = map['invertRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
