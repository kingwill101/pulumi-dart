// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getArgoTieredCaching.
class GetArgoTieredCachingResult {
  /// Whether the setting is editable.
  final bool? editable;
  /// Identifier.
  final String? id;
  /// Last time this setting was modified.
  final String? modifiedOn;
  /// Value of the Tiered Cache zone setting.
  /// Available values: "on", "off".
  final String? value;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetArgoTieredCachingResult].
  /// [editable] Whether the setting is editable.
  /// [id] Identifier.
  /// [modifiedOn] Last time this setting was modified.
  /// [value] Value of the Tiered Cache zone setting.
  /// [zoneId] Identifier.
  const GetArgoTieredCachingResult({
    this.editable,
    this.id,
    this.modifiedOn,
    this.value,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editable': ?editable,
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'value': ?value,
      'zoneId': ?zoneId,
    };
  }

  factory GetArgoTieredCachingResult.fromMap(Map<String, dynamic> map) {
    return GetArgoTieredCachingResult(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
