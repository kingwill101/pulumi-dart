// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppHostingTrafficRolloutPolicyIgnoredPath {
  /// The pattern to match against.
  final pulumi.Input<String> pattern;
  /// The type of pattern to match against.
  /// Possible values are: `RE2`, `GLOB`, `PREFIX`.
  final pulumi.Input<String> type;

  /// Creates a new [AppHostingTrafficRolloutPolicyIgnoredPath].
  /// [pattern] The pattern to match against.
  /// [type] The type of pattern to match against.
  const AppHostingTrafficRolloutPolicyIgnoredPath({
    required this.pattern,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pattern': pattern,
      'type': type,
    };
  }

  factory AppHostingTrafficRolloutPolicyIgnoredPath.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficRolloutPolicyIgnoredPath(
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
