// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigSignInAnonymous {
  /// Whether anonymous user auth is enabled for the project or not.
  ///
  /// &lt;a name="nested_sign_in_hash_config"&gt;&lt;/a&gt;The `hash_config` block contains:
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

