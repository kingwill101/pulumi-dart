// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerDeveloperConnectEventConfigPush {
  /// Regex of branches to match.
  final pulumi.Input<String> branch;
  /// If true, only trigger a build if the revision regex does NOT match the git_ref regex.
  final pulumi.Input<bool> invertRegex;
  /// Regex of tags to match.
  final pulumi.Input<String> tag;

  /// Creates a new [GetTriggerDeveloperConnectEventConfigPush].
  /// [branch] Regex of branches to match.
  /// [invertRegex] If true, only trigger a build if the revision regex does NOT match the git_ref regex.
  /// [tag] Regex of tags to match.
  GetTriggerDeveloperConnectEventConfigPush({
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

  factory GetTriggerDeveloperConnectEventConfigPush.fromMap(Map<String, dynamic> map) {
    return GetTriggerDeveloperConnectEventConfigPush(
      branch: pulumi.Input.fromValue(map['branch'] as String),
      invertRegex: pulumi.Input.fromValue(map['invertRegex'] as bool),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}

