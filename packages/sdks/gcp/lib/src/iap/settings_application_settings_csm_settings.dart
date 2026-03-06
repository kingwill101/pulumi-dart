// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsApplicationSettingsCsmSettings {
  /// Audience claim set in the generated RCToken. This value is not validated by IAP.
  final pulumi.Input<String>? rctokenAud;

  /// Creates a new [SettingsApplicationSettingsCsmSettings].
  /// [rctokenAud] Audience claim set in the generated RCToken. This value is not validated by IAP.
  const SettingsApplicationSettingsCsmSettings({
    this.rctokenAud,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rctokenAud': ?rctokenAud,
    };
  }

  factory SettingsApplicationSettingsCsmSettings.fromMap(Map<String, dynamic> map) {
    return SettingsApplicationSettingsCsmSettings(
      rctokenAud: (() { final guardedValue = map['rctokenAud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

