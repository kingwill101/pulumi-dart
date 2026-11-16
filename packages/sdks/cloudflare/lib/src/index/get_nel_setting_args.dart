// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_nel_setting_get_nel_setting_args_doc}
/// Arguments for getNelSetting.
/// {@endtemplate}
/// {@macro pulumi_index_get_nel_setting_get_nel_setting_args_doc}
class GetNelSettingArgs {
  /// Identifier of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetNelSettingArgs].
  /// [zoneId] Identifier of the zone.
  const GetNelSettingArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetNelSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetNelSettingArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
