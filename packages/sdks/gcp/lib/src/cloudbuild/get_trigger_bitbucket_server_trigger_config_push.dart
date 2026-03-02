// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerBitbucketServerTriggerConfigPush {
  /// Regex of branches to match.  Specify only one of branch or tag.
  final pulumi.Input<String> branch;
  /// When true, only trigger a build if the revision regex does NOT match the gitRef regex.
  final pulumi.Input<bool> invertRegex;
  /// Regex of tags to match.  Specify only one of branch or tag.
  final pulumi.Input<String> tag;

  /// Creates a new [GetTriggerBitbucketServerTriggerConfigPush].
  /// [branch] Regex of branches to match.  Specify only one of branch or tag.
  /// [invertRegex] When true, only trigger a build if the revision regex does NOT match the gitRef regex.
  /// [tag] Regex of tags to match.  Specify only one of branch or tag.
  GetTriggerBitbucketServerTriggerConfigPush({
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

  factory GetTriggerBitbucketServerTriggerConfigPush.fromMap(Map<String, dynamic> map) {
    return GetTriggerBitbucketServerTriggerConfigPush(
      branch: (map['branch'] as String).input(),
      invertRegex: (map['invertRegex'] as bool).input(),
      tag: (map['tag'] as String).input(),
    );
  }
}

