// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppHostingTrafficRolloutPolicyRequiredPath {
  /// The pattern to match against.
  final pulumi.Input<String> pattern;
  /// The type of pattern to match against.
  /// Possible values are: `RE2`, `GLOB`, `PREFIX`.
  final pulumi.Input<String> type;

  /// Creates a new [AppHostingTrafficRolloutPolicyRequiredPath].
  /// [pattern] The pattern to match against.
  /// [type] The type of pattern to match against.
  const AppHostingTrafficRolloutPolicyRequiredPath({
    required this.pattern,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pattern': pattern,
      'type': type,
    };
  }

  factory AppHostingTrafficRolloutPolicyRequiredPath.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficRolloutPolicyRequiredPath(
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
