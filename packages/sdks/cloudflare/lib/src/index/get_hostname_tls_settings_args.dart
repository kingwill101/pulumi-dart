// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_hostname_tls_settings_get_hostname_tls_settings_args_doc}
/// Arguments for getHostnameTlsSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_hostname_tls_settings_get_hostname_tls_settings_args_doc}
class GetHostnameTlsSettingsArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// The TLS Setting name.
  /// The value type depends on the setting:
  final pulumi.Input<String> settingId;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetHostnameTlsSettingsArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [settingId] The TLS Setting name.
  /// [zoneId] Identifier.
  const GetHostnameTlsSettingsArgs({
    this.maxItems,
    required this.settingId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'settingId': settingId,
      'zoneId': zoneId,
    };
  }

  factory GetHostnameTlsSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetHostnameTlsSettingsArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      settingId: pulumi.Input.fromValue(map['settingId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
