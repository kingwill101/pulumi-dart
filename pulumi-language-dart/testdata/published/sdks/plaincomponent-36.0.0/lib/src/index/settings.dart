// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Settings {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [Settings].
  /// [enabled] Required.
  /// [tags] Required.
  const Settings({
    required this.enabled,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'tags': tags,
    };
  }

  factory Settings.fromMap(Map<String, dynamic> map) {
    return Settings(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
