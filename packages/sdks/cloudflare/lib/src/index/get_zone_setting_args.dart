// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_setting_get_zone_setting_args_doc}
/// Arguments for getZoneSetting.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_setting_get_zone_setting_args_doc}
class GetZoneSettingArgs {
  /// Setting name
  final pulumi.Input<String> settingId;
  /// Identifier
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZoneSettingArgs].
  /// [settingId] Setting name
  /// [zoneId] Identifier
  const GetZoneSettingArgs({
    required this.settingId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settingId': settingId,
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneSettingArgs(
      settingId: pulumi.Input.fromValue(map['settingId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
