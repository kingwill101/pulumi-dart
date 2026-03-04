// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a setting for the container. The setting file path can be fetched from environment variable "Fabric_SettingPath". The path for Windows container is "C:\\secrets". The path for Linux container is "/var/secrets".
class SettingResponse {
  /// The name of the setting.
  final pulumi.Input<String>? name;

  /// The value of the setting.
  final pulumi.Input<String>? value;

  /// Creates a new [SettingResponse].
  /// [name] The name of the setting.
  /// [value] The value of the setting.
  SettingResponse({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory SettingResponse.fromMap(Map<String, dynamic> map) {
    return SettingResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
