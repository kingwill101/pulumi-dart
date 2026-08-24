// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUniversalSslSetting.
class GetUniversalSslSettingResult {
  /// Disabling Universal SSL removes any currently active Universal SSL certificates for your zone from the edge and prevents any future Universal SSL certificates from being ordered. If there are no advanced certificates or custom certificates uploaded for the domain, visitors will be unable to access the domain over HTTPS.
  final bool? enabled;
  final String? id;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetUniversalSslSettingResult].
  /// [enabled] Disabling Universal SSL removes any currently active Universal SSL certificates for your zone from the edge and prevents any future Universal SSL certificates from being ordered. If there are no advanced certificates or custom certificates uploaded for the domain, visitors will be unable to access the domain over HTTPS.
  /// [id] Optional.
  /// [zoneId] Identifier.
  const GetUniversalSslSettingResult({
    this.enabled,
    this.id,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'id': ?id,
      'zoneId': ?zoneId,
    };
  }

  factory GetUniversalSslSettingResult.fromMap(Map<String, dynamic> map) {
    return GetUniversalSslSettingResult(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
