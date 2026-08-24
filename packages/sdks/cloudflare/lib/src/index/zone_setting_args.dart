// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zone_setting_zone_setting_args_doc}
/// The set of arguments for ZoneSetting.
/// {@endtemplate}
/// {@macro pulumi_index_zone_setting_zone_setting_args_doc}
class ZoneSettingArgs {
  /// ssl-recommender enrollment setting.
  final pulumi.Input<bool?>? enabled;
  /// Setting name
  final pulumi.Input<String> settingId;
  /// Current value of the zone setting.
  final pulumi.Input<dynamic> value;
  /// Identifier
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneSettingArgs].
  /// [enabled] ssl-recommender enrollment setting.
  /// [settingId] Setting name
  /// [value] Current value of the zone setting.
  /// [zoneId] Identifier
  const ZoneSettingArgs({
    this.enabled,
    required this.settingId,
    required this.value,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'settingId': settingId,
      'value': value,
      'zoneId': zoneId,
    };
  }

  factory ZoneSettingArgs.fromMap(Map<String, dynamic> map) {
    return ZoneSettingArgs(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      settingId: pulumi.Input.fromValue(map['settingId'] as String),
      value: pulumi.Input.fromValue(map['value']),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
