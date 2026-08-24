// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthenticatedOriginPullsSettings.
class GetAuthenticatedOriginPullsSettingsResult {
  /// Indicates whether zone-level authenticated origin pulls is enabled.
  final bool? enabled;
  /// Identifier.
  final String? id;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetAuthenticatedOriginPullsSettingsResult].
  /// [enabled] Indicates whether zone-level authenticated origin pulls is enabled.
  /// [id] Identifier.
  /// [zoneId] Identifier.
  const GetAuthenticatedOriginPullsSettingsResult({
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

  factory GetAuthenticatedOriginPullsSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetAuthenticatedOriginPullsSettingsResult(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
