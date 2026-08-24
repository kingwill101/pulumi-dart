// ignore_for_file: unused_element, unnecessary_cast

import 'get_zone_cache_variants_value.dart';

/// Result data returned by getZoneCacheVariants.
class GetZoneCacheVariantsResult {
  /// Whether the setting is editable.
  final bool? editable;
  /// Identifier.
  final String? id;
  /// Last time this setting was modified.
  final String? modifiedOn;
  /// Value of the zone setting.
  final GetZoneCacheVariantsValue? value;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetZoneCacheVariantsResult].
  /// [editable] Whether the setting is editable.
  /// [id] Identifier.
  /// [modifiedOn] Last time this setting was modified.
  /// [value] Value of the zone setting.
  /// [zoneId] Identifier.
  const GetZoneCacheVariantsResult({
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
      'value': ?value?.toMap(),
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneCacheVariantsResult.fromMap(Map<String, dynamic> map) {
    return GetZoneCacheVariantsResult(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return GetZoneCacheVariantsValue.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
