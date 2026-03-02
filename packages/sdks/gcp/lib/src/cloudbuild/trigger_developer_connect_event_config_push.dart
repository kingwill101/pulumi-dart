// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerDeveloperConnectEventConfigPush {
  /// Regex of branches to match.
  final pulumi.Input<String>? branch;
  /// If true, only trigger a build if the revision regex does NOT match the git_ref regex.
  final pulumi.Input<bool>? invertRegex;
  /// Regex of tags to match.
  final pulumi.Input<String>? tag;

  /// Creates a new [TriggerDeveloperConnectEventConfigPush].
  /// [branch] Regex of branches to match.
  /// [invertRegex] If true, only trigger a build if the revision regex does NOT match the git_ref regex.
  /// [tag] Regex of tags to match.
  TriggerDeveloperConnectEventConfigPush({
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

  factory TriggerDeveloperConnectEventConfigPush.fromMap(Map<String, dynamic> map) {
    return TriggerDeveloperConnectEventConfigPush(
      branch: map['branch'] == null ? null : (map['branch']! as String).input(),
      invertRegex: map['invertRegex'] == null ? null : (map['invertRegex']! as bool).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
    );
  }
}

