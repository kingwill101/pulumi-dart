// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsAccessSettingsCorsSettings {
  /// Configuration to allow HTTP OPTIONS calls to skip authorization.
  /// If undefined, IAP will not apply any special logic to OPTIONS requests.
  final pulumi.Input<bool>? allowHttpOptions;

  /// Creates a new [SettingsAccessSettingsCorsSettings].
  /// [allowHttpOptions] Configuration to allow HTTP OPTIONS calls to skip authorization.
  SettingsAccessSettingsCorsSettings({
    this.allowHttpOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowHttpOptions': ?allowHttpOptions,
    };
  }

  factory SettingsAccessSettingsCorsSettings.fromMap(Map<String, dynamic> map) {
    return SettingsAccessSettingsCorsSettings(
      allowHttpOptions: (() { final guardedValue = map['allowHttpOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

