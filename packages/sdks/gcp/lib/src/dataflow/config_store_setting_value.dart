// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigStoreSettingValue {
  /// Represents a boolean value.
  final pulumi.Input<bool?>? boolValue;
  /// Represents a string value.
  final pulumi.Input<String?>? stringValue;

  /// Creates a new [ConfigStoreSettingValue].
  /// [boolValue] Represents a boolean value.
  /// [stringValue] Represents a string value.
  const ConfigStoreSettingValue({
    this.boolValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'stringValue': ?stringValue,
    };
  }

  factory ConfigStoreSettingValue.fromMap(Map<String, dynamic> map) {
    return ConfigStoreSettingValue(
      boolValue: (() { final guardedValue = map['boolValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
