// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigSignInAnonymous {
  /// Whether anonymous user auth is enabled for the project or not.
  ///
  /// &lt;a name="nestedSignInHashConfig"&gt;&lt;/a&gt;The `hashConfig` block contains:
  final pulumi.Input<bool> enabled;

  /// Creates a new [ConfigSignInAnonymous].
  /// [enabled] Whether anonymous user auth is enabled for the project or not.
  const ConfigSignInAnonymous({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ConfigSignInAnonymous.fromMap(Map<String, dynamic> map) {
    return ConfigSignInAnonymous(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
