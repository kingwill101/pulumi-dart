// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Maintenance window. This specifies when a Cloud SQL instance is restarted for system maintenance purposes.
class MaintenanceWindowResponse {
  /// day of week (1-7), starting on Monday.
  final pulumi.Input<int> day;
  /// hour of day - 0 to 23.
  final pulumi.Input<int> hour;
  /// This is always `sql#maintenanceWindow`.
  final pulumi.Input<String> kind;
  /// Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
  final pulumi.Input<String> updateTrack;

  /// Creates a new [MaintenanceWindowResponse].
  /// [day] day of week (1-7), starting on Monday.
  /// [hour] hour of day - 0 to 23.
  /// [kind] This is always `sql#maintenanceWindow`.
  /// [updateTrack] Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
  const MaintenanceWindowResponse({
    required this.day,
    required this.hour,
    required this.kind,
    required this.updateTrack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'hour': hour,
      'kind': kind,
      'updateTrack': updateTrack,
    };
  }

  factory MaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowResponse(
      day: pulumi.Input.fromValue(map['day'] as int),
      hour: pulumi.Input.fromValue(map['hour'] as int),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      updateTrack: pulumi.Input.fromValue(map['updateTrack'] as String),
    );
  }
}
