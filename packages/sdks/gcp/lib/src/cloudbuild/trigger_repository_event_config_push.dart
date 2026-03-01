// ignore_for_file: unused_element, unnecessary_cast


class TriggerRepositoryEventConfigPush {
  /// Regex of branches to match.
  final String? branch;
  /// If true, only trigger a build if the revision regex does NOT match the git_ref regex.
  final bool? invertRegex;
  /// Regex of tags to match.
  final String? tag;

  /// Creates a new [TriggerRepositoryEventConfigPush].
  /// [branch] Regex of branches to match.
  /// [invertRegex] If true, only trigger a build if the revision regex does NOT match the git_ref regex.
  /// [tag] Regex of tags to match.
  TriggerRepositoryEventConfigPush({
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

  factory TriggerRepositoryEventConfigPush.fromMap(Map<String, dynamic> map) {
    return TriggerRepositoryEventConfigPush(
      branch: map['branch'] == null ? null : map['branch'] as String,
      invertRegex: map['invertRegex'] == null ? null : map['invertRegex'] as bool,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}

