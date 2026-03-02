// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_update_track.dart';

/// Maintenance window. This specifies when a Cloud SQL instance is restarted for system maintenance purposes.
class MaintenanceWindow {
  /// day of week (1-7), starting on Monday.
  final pulumi.Input<int>? day;
  /// hour of day - 0 to 23.
  final pulumi.Input<int>? hour;
  /// This is always `sql#maintenanceWindow`.
  final pulumi.Input<String>? kind;
  /// Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
  final pulumi.Input<MaintenanceWindowUpdateTrack>? updateTrack;

  /// Creates a new [MaintenanceWindow].
  /// [day] day of week (1-7), starting on Monday.
  /// [hour] hour of day - 0 to 23.
  /// [kind] This is always `sql#maintenanceWindow`.
  /// [updateTrack] Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
  MaintenanceWindow({
    this.day,
    this.hour,
    this.kind,
    this.updateTrack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'hour': ?hour,
      'kind': ?kind,
      'updateTrack': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowUpdateTrack, String>(updateTrack, (value) => value.value),
    };
  }

  factory MaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindow(
      day: map['day'] == null ? null : (map['day'] as int).input(),
      hour: map['hour'] == null ? null : (map['hour'] as int).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      updateTrack: map['updateTrack'] == null ? null : (MaintenanceWindowUpdateTrack.fromValue(map['updateTrack'] as String)).input(),
    );
  }
}

