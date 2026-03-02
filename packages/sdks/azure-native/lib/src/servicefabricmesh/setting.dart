// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a setting for the container. The setting file path can be fetched from environment variable "Fabric_SettingPath". The path for Windows container is "C:\\secrets". The path for Linux container is "/var/secrets".
class Setting {
  /// The name of the setting.
  final pulumi.Input<String>? name;
  /// The value of the setting.
  final pulumi.Input<String>? value;

  /// Creates a new [Setting].
  /// [name] The name of the setting.
  /// [value] The value of the setting.
  Setting({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory Setting.fromMap(Map<String, dynamic> map) {
    return Setting(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

