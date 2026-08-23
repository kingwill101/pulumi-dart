// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsMaintenanceWindow {
  /// Day of week (`1-7`), starting on Monday
  final pulumi.Input<int>? day;
  /// Hour of day (`0-23`), ignored if `day` not set
  final pulumi.Input<int>? hour;
  /// Receive updates after one week (`canary`) or after two weeks (`stable`) or after five weeks (`week5`) of notification.
  final pulumi.Input<String>? updateTrack;

  /// Creates a new [DatabaseInstanceSettingsMaintenanceWindow].
  /// [day] Day of week (`1-7`), starting on Monday
  /// [hour] Hour of day (`0-23`), ignored if `day` not set
  /// [updateTrack] Receive updates after one week (`canary`) or after two weeks (`stable`) or after five weeks (`week5`) of notification.
  const DatabaseInstanceSettingsMaintenanceWindow({
    this.day,
    this.hour,
    this.updateTrack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'hour': ?hour,
      'updateTrack': ?updateTrack,
    };
  }

  factory DatabaseInstanceSettingsMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsMaintenanceWindow(
      day: (() { final guardedValue = map['day']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hour: (() { final guardedValue = map['hour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updateTrack: (() { final guardedValue = map['updateTrack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
