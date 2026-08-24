// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTieredCache.
class GetTieredCacheResult {
  /// Whether the setting is editable.
  final bool? editable;
  /// Identifier.
  final String? id;
  /// Last time this setting was modified.
  final String? modifiedOn;
  /// Value of the Smart Tiered Cache zone setting.
  /// Available values: "on", "off".
  final String? value;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetTieredCacheResult].
  /// [editable] Whether the setting is editable.
  /// [id] Identifier.
  /// [modifiedOn] Last time this setting was modified.
  /// [value] Value of the Smart Tiered Cache zone setting.
  /// [zoneId] Identifier.
  const GetTieredCacheResult({
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

  factory GetTieredCacheResult.fromMap(Map<String, dynamic> map) {
    return GetTieredCacheResult(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
