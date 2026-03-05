// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CodeToolsSettingEnabledToolConfig {
  /// Key of the configuration item.
  final pulumi.Input<String> key;
  /// Value of the configuration item.
  final pulumi.Input<String> value;

  /// Creates a new [CodeToolsSettingEnabledToolConfig].
  /// [key] Key of the configuration item.
  /// [value] Value of the configuration item.
  CodeToolsSettingEnabledToolConfig({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory CodeToolsSettingEnabledToolConfig.fromMap(Map<String, dynamic> map) {
    return CodeToolsSettingEnabledToolConfig(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

