// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceSettingMaintenanceWindow {
  /// Day of week (1-7), starting on Monday
  final pulumi.Input<int> day;
  /// Hour of day (0-23), ignored if day not set
  final pulumi.Input<int> hour;
  /// Receive updates after one week (canary) or after two weeks (stable) or after five weeks (week5) of notification.
  final pulumi.Input<String> updateTrack;

  /// Creates a new [GetDatabaseInstancesInstanceSettingMaintenanceWindow].
  /// [day] Day of week (1-7), starting on Monday
  /// [hour] Hour of day (0-23), ignored if day not set
  /// [updateTrack] Receive updates after one week (canary) or after two weeks (stable) or after five weeks (week5) of notification.
  const GetDatabaseInstancesInstanceSettingMaintenanceWindow({
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

  factory GetDatabaseInstancesInstanceSettingMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingMaintenanceWindow(
      day: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['day'])),
      hour: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hour'])),
      updateTrack: pulumi.Input.fromValue(map['updateTrack'] as String),
    );
  }
}
