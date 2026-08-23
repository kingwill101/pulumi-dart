// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerRepositoryEventConfigPush {
  /// Regex of branches to match.
  ///
  /// The syntax of the regular expressions accepted is the syntax accepted by
  /// RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String> branch;
  /// If true, only trigger a build if the revision regex does NOT match the gitRef regex.
  final pulumi.Input<bool> invertRegex;
  /// Regex of tags to match.
  ///
  /// The syntax of the regular expressions accepted is the syntax accepted by
  /// RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String> tag;

  /// Creates a new [GetTriggerRepositoryEventConfigPush].
  /// [branch] Regex of branches to match.
  /// [invertRegex] If true, only trigger a build if the revision regex does NOT match the gitRef regex.
  /// [tag] Regex of tags to match.
  const GetTriggerRepositoryEventConfigPush({
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

  factory GetTriggerRepositoryEventConfigPush.fromMap(Map<String, dynamic> map) {
    return GetTriggerRepositoryEventConfigPush(
      branch: pulumi.Input.fromValue(map['branch'] as String),
      invertRegex: pulumi.Input.fromValue(map['invertRegex'] as bool),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}
