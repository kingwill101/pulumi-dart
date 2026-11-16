// ignore_for_file: unused_element, unnecessary_cast

import 'get_nel_setting_value.dart';

/// Result data returned by getNelSetting.
class GetNelSettingResult {
  /// Whether the setting is editable. This is false when the zone's plan does not include NEL or the NEL product feature is not enabled.
  final bool? editable;
  /// Identifier of the zone.
  final String? id;
  /// When the setting was last modified. A zero value (0001-01-01T00:00:00Z) indicates the setting has never been explicitly set and is using the default value.
  final String? modifiedOn;
  /// The NEL configuration value.
  final GetNelSettingValue? value;
  /// Identifier of the zone.
  final String? zoneId;

  /// Creates a new [GetNelSettingResult].
  /// [editable] Whether the setting is editable. This is false when the zone's plan does not include NEL or the NEL product feature is not enabled.
  /// [id] Identifier of the zone.
  /// [modifiedOn] When the setting was last modified. A zero value (0001-01-01T00:00:00Z) indicates the setting has never been explicitly set and is using the default value.
  /// [value] The NEL configuration value.
  /// [zoneId] Identifier of the zone.
  const GetNelSettingResult({
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

  factory GetNelSettingResult.fromMap(Map<String, dynamic> map) {
    return GetNelSettingResult(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return GetNelSettingValue.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
