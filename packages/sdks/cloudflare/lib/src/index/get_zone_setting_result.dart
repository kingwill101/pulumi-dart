// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZoneSetting.
class GetZoneSettingResult {
  /// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
  final bool? editable;
  /// ssl-recommender enrollment setting.
  final bool? enabled;
  /// Setting name
  final String? id;
  /// last time this setting was modified.
  final String? modifiedOn;
  /// Setting name
  final String? settingId;
  /// Value of the zone setting.
  /// Notes: The interval (in seconds) from when development mode expires (positive integer) or last expired (negative integer) for the domain. If development mode has never been enabled, this value is false.
  final double? timeRemaining;
  /// Current value of the zone setting.
  /// Available values: "on", "off".
  final String? value;
  /// Identifier
  final String? zoneId;

  /// Creates a new [GetZoneSettingResult].
  /// [editable] Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
  /// [enabled] ssl-recommender enrollment setting.
  /// [id] Setting name
  /// [modifiedOn] last time this setting was modified.
  /// [settingId] Setting name
  /// [timeRemaining] Value of the zone setting.
  /// [value] Current value of the zone setting.
  /// [zoneId] Identifier
  const GetZoneSettingResult({
    this.editable,
    this.enabled,
    this.id,
    this.modifiedOn,
    this.settingId,
    this.timeRemaining,
    this.value,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editable': ?editable,
      'enabled': ?enabled,
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'settingId': ?settingId,
      'timeRemaining': ?timeRemaining,
      'value': ?value,
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneSettingResult.fromMap(Map<String, dynamic> map) {
    return GetZoneSettingResult(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      settingId: (() { final guardedValue = map['settingId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeRemaining: (() { final guardedValue = map['timeRemaining']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
