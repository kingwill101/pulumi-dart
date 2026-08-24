// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_hostname_tls_setting_get_hostname_tls_setting_args_doc}
/// Arguments for getHostnameTlsSetting.
/// {@endtemplate}
/// {@macro pulumi_index_get_hostname_tls_setting_get_hostname_tls_setting_args_doc}
class GetHostnameTlsSettingArgs {
  /// The TLS Setting name.
  /// The value type depends on the setting:
  final pulumi.Input<String> settingId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetHostnameTlsSettingArgs].
  /// [settingId] The TLS Setting name.
  /// [zoneId] Identifier.
  const GetHostnameTlsSettingArgs({
    required this.settingId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settingId': settingId,
      'zoneId': ?zoneId,
    };
  }

  factory GetHostnameTlsSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetHostnameTlsSettingArgs(
      settingId: pulumi.Input.fromValue(map['settingId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
