// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAiSecurity.
class GetAiSecurityResult {
  /// Whether AI Security for Apps is enabled on the zone.
  final bool? enabled;
  /// Defines the zone.
  final String? id;
  /// Defines the zone.
  final String? zoneId;

  /// Creates a new [GetAiSecurityResult].
  /// [enabled] Whether AI Security for Apps is enabled on the zone.
  /// [id] Defines the zone.
  /// [zoneId] Defines the zone.
  const GetAiSecurityResult({
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

  factory GetAiSecurityResult.fromMap(Map<String, dynamic> map) {
    return GetAiSecurityResult(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
