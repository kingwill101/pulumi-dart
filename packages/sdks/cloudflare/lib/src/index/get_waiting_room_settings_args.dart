// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_waiting_room_settings_get_waiting_room_settings_args_doc}
/// Arguments for getWaitingRoomSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_waiting_room_settings_get_waiting_room_settings_args_doc}
class GetWaitingRoomSettingsArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetWaitingRoomSettingsArgs].
  /// [zoneId] Identifier.
  const GetWaitingRoomSettingsArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetWaitingRoomSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetWaitingRoomSettingsArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
