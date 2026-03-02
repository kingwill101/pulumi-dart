// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerGithubPush {
  /// Regex of branches to match.  Specify only one of branch or tag.
  final pulumi.Input<String> branch;
  /// When true, only trigger a build if the revision regex does NOT match the git_ref regex.
  final pulumi.Input<bool> invertRegex;
  /// Regex of tags to match.  Specify only one of branch or tag.
  final pulumi.Input<String> tag;

  /// Creates a new [GetTriggerGithubPush].
  /// [branch] Regex of branches to match.  Specify only one of branch or tag.
  /// [invertRegex] When true, only trigger a build if the revision regex does NOT match the git_ref regex.
  /// [tag] Regex of tags to match.  Specify only one of branch or tag.
  GetTriggerGithubPush({
    required this.branch,
    required this.invertRegex,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': branch,
      'invertRegex': invertRegex,
      'tag': tag,
    };
  }

  factory GetTriggerGithubPush.fromMap(Map<String, dynamic> map) {
    return GetTriggerGithubPush(
      branch: (map['branch'] as String).input(),
      invertRegex: (map['invertRegex'] as bool).input(),
      tag: (map['tag'] as String).input(),
    );
  }
}

