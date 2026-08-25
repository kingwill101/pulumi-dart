// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingMaintenanceWindow {
  /// Day of week (1-7), starting on Monday
  final pulumi.Input<int> day;
  /// Hour of day (0-23), ignored if day not set
  final pulumi.Input<int> hour;
  /// Receive updates after one week (canary) or after two weeks (stable) or after five weeks (week5) of notification.
  final pulumi.Input<String> updateTrack;

  /// Creates a new [GetDatabaseInstanceSettingMaintenanceWindow].
  /// [day] Day of week (1-7), starting on Monday
  /// [hour] Hour of day (0-23), ignored if day not set
  /// [updateTrack] Receive updates after one week (canary) or after two weeks (stable) or after five weeks (week5) of notification.
  const GetDatabaseInstanceSettingMaintenanceWindow({
    required this.day,
    required this.hour,
    required this.updateTrack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'hour': hour,
      'updateTrack': updateTrack,
    };
  }

  factory GetDatabaseInstanceSettingMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingMaintenanceWindow(
      day: pulumi.Input.fromValue((map['day'] as num).toInt()),
      hour: pulumi.Input.fromValue((map['hour'] as num).toInt()),
      updateTrack: pulumi.Input.fromValue(map['updateTrack'] as String),
    );
  }
}
