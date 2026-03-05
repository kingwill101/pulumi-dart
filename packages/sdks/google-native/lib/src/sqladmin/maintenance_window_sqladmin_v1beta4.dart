// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_update_track_sqladmin_v1beta4.dart';

/// Maintenance window. This specifies when a Cloud SQL instance is restarted for system maintenance purposes.
class MaintenanceWindowSqladminV1beta4 {
  /// day of week (1-7), starting on Monday.
  final pulumi.Input<int>? day;
  /// hour of day - 0 to 23.
  final pulumi.Input<int>? hour;
  /// This is always `sql#maintenanceWindow`.
  final pulumi.Input<String>? kind;
  /// Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
  final pulumi.Input<MaintenanceWindowUpdateTrackSqladminV1beta4>? updateTrack;

  /// Creates a new [MaintenanceWindowSqladminV1beta4].
  /// [day] day of week (1-7), starting on Monday.
  /// [hour] hour of day - 0 to 23.
  /// [kind] This is always `sql#maintenanceWindow`.
  /// [updateTrack] Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
  MaintenanceWindowSqladminV1beta4({
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
      'updateTrack': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowUpdateTrackSqladminV1beta4, String>(updateTrack, (value) => value.wireValue),
    };
  }

  factory MaintenanceWindowSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowSqladminV1beta4(
      day: (() { final guardedValue = map['day']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hour: (() { final guardedValue = map['hour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTrack: (() { final guardedValue = map['updateTrack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindowUpdateTrackSqladminV1beta4.fromValue(guardedValue as String)); })(),
    );
  }
}

