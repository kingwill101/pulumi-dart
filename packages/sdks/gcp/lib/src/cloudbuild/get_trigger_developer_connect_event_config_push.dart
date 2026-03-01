// ignore_for_file: unused_element, unnecessary_cast


class GetTriggerDeveloperConnectEventConfigPush {
  /// Regex of branches to match.
  final String branch;
  /// If true, only trigger a build if the revision regex does NOT match the git_ref regex.
  final bool invertRegex;
  /// Regex of tags to match.
  final String tag;

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
      branch: map['branch'] as String,
      invertRegex: map['invertRegex'] as bool,
      tag: map['tag'] as String,
    );
  }
}

