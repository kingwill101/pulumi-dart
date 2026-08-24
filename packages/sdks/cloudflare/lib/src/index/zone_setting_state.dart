// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZoneSetting resources.
class ZoneSettingState {
  /// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
  final pulumi.Input<bool?>? editable;
  /// ssl-recommender enrollment setting.
  final pulumi.Input<bool?>? enabled;
  /// last time this setting was modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Setting name
  final pulumi.Input<String?>? settingId;
  /// Value of the zone setting.
  /// Notes: The interval (in seconds) from when development mode expires (positive integer) or last expired (negative integer) for the domain. If development mode has never been enabled, this value is false.
  final pulumi.Input<double?>? timeRemaining;
  /// Current value of the zone setting.
  final pulumi.Input<dynamic>? value;
  /// Identifier
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZoneSettingState].
  /// [editable] Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
  /// [enabled] ssl-recommender enrollment setting.
  /// [modifiedOn] last time this setting was modified.
  /// [settingId] Setting name
  /// [timeRemaining] Value of the zone setting.
  /// [value] Current value of the zone setting.
  /// [zoneId] Identifier
  const ZoneSettingState({
    this.editable,
    this.enabled,
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
      'modifiedOn': ?modifiedOn,
      'settingId': ?settingId,
      'timeRemaining': ?timeRemaining,
      'value': ?value,
      'zoneId': ?zoneId,
    };
  }

  factory ZoneSettingState.fromMap(Map<String, dynamic> map) {
    return ZoneSettingState(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settingId: (() { final guardedValue = map['settingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeRemaining: (() { final guardedValue = map['timeRemaining']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
