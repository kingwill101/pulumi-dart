// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHostnameTlsSetting.
class GetHostnameTlsSettingResult {
  /// This is the time the tls setting was originally created for this hostname.
  final String? createdAt;
  /// The hostname for which the tls settings are set.
  final String? hostname;
  /// The TLS Setting name.
  /// The value type depends on the setting:
  final String? settingId;
  /// Deployment status for the given tls setting.
  final String? status;
  /// This is the time the tls setting was updated.
  final String? updatedAt;
  /// The TLS setting value.
  /// The type depends on the `settingId` used in the request path:
  final String? value;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetHostnameTlsSettingResult].
  /// [createdAt] This is the time the tls setting was originally created for this hostname.
  /// [hostname] The hostname for which the tls settings are set.
  /// [settingId] The TLS Setting name.
  /// [status] Deployment status for the given tls setting.
  /// [updatedAt] This is the time the tls setting was updated.
  /// [value] The TLS setting value.
  /// [zoneId] Identifier.
  const GetHostnameTlsSettingResult({
    this.createdAt,
    this.hostname,
    this.settingId,
    this.status,
    this.updatedAt,
    this.value,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'hostname': ?hostname,
      'settingId': ?settingId,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'value': ?value,
      'zoneId': ?zoneId,
    };
  }

  factory GetHostnameTlsSettingResult.fromMap(Map<String, dynamic> map) {
    return GetHostnameTlsSettingResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      settingId: (() { final guardedValue = map['settingId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
