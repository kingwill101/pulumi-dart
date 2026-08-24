// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_hostname_tls_setting_hostname_tls_setting_args_doc}
/// The set of arguments for HostnameTlsSetting.
/// {@endtemplate}
/// {@macro pulumi_index_hostname_tls_setting_hostname_tls_setting_args_doc}
class HostnameTlsSettingArgs {
  /// The hostname for which the tls settings are set.
  final pulumi.Input<String> hostname;
  /// The TLS Setting name.
  /// The value type depends on the setting:
  final pulumi.Input<String> settingId;
  /// The TLS setting value.
  /// The type depends on the `settingId` used in the request path:
  final pulumi.Input<dynamic> value;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [HostnameTlsSettingArgs].
  /// [hostname] The hostname for which the tls settings are set.
  /// [settingId] The TLS Setting name.
  /// [value] The TLS setting value.
  /// [zoneId] Identifier.
  const HostnameTlsSettingArgs({
    required this.hostname,
    required this.settingId,
    required this.value,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'settingId': settingId,
      'value': value,
      'zoneId': zoneId,
    };
  }

  factory HostnameTlsSettingArgs.fromMap(Map<String, dynamic> map) {
    return HostnameTlsSettingArgs(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      settingId: pulumi.Input.fromValue(map['settingId'] as String),
      value: pulumi.Input.fromValue(map['value']),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
