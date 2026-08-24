// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZoneAutoOriginTlsKex.
class GetZoneAutoOriginTlsKexResult {
  /// Whether Auto-Origin TLS KEX selection is enabled for the zone.
  final bool? enabled;
  /// The ID of this resource.
  final String? id;
  /// Last time this setting was modified.
  final String? modifiedOn;
  final String? zoneId;

  /// Creates a new [GetZoneAutoOriginTlsKexResult].
  /// [enabled] Whether Auto-Origin TLS KEX selection is enabled for the zone.
  /// [id] The ID of this resource.
  /// [modifiedOn] Last time this setting was modified.
  /// [zoneId] Optional.
  const GetZoneAutoOriginTlsKexResult({
    this.enabled,
    this.id,
    this.modifiedOn,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneAutoOriginTlsKexResult.fromMap(Map<String, dynamic> map) {
    return GetZoneAutoOriginTlsKexResult(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
