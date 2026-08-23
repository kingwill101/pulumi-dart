// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Push contains filter properties for matching GitHub git pushes.
class PushFilter {
  /// Regexes matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String>? branch;
  /// When true, only trigger a build if the revision regex does NOT match the git_ref regex.
  final pulumi.Input<bool>? invertRegex;
  /// Regexes matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String>? tag;

  /// Creates a new [PushFilter].
  /// [branch] Regexes matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  /// [invertRegex] When true, only trigger a build if the revision regex does NOT match the git_ref regex.
  /// [tag] Regexes matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  const PushFilter({
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

  factory PushFilter.fromMap(Map<String, dynamic> map) {
    return PushFilter(
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invertRegex: (() { final guardedValue = map['invertRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
