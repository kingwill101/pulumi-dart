// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for scheduled snapshot creation mechanism.
class ScheduledSnapshotsConfigResponseComposerV1beta1 {
  /// Optional. Whether scheduled snapshots creation is enabled.
  final pulumi.Input<bool> enabled;
  /// Optional. The cron expression representing the time when snapshots creation mechanism runs. This field is subject to additional validation around frequency of execution.
  final pulumi.Input<String> snapshotCreationSchedule;
  /// Optional. The Cloud Storage location for storing automatically created snapshots.
  final pulumi.Input<String> snapshotLocation;
  /// Optional. Time zone that sets the context to interpret snapshot_creation_schedule.
  final pulumi.Input<String> timeZone;

  /// Creates a new [ScheduledSnapshotsConfigResponseComposerV1beta1].
  /// [enabled] Optional. Whether scheduled snapshots creation is enabled.
  /// [snapshotCreationSchedule] Optional. The cron expression representing the time when snapshots creation mechanism runs. This field is subject to additional validation around frequency of execution.
  /// [snapshotLocation] Optional. The Cloud Storage location for storing automatically created snapshots.
  /// [timeZone] Optional. Time zone that sets the context to interpret snapshot_creation_schedule.
  ScheduledSnapshotsConfigResponseComposerV1beta1({
    required this.enabled,
    required this.snapshotCreationSchedule,
    required this.snapshotLocation,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'snapshotCreationSchedule': snapshotCreationSchedule,
      'snapshotLocation': snapshotLocation,
      'timeZone': timeZone,
    };
  }

  factory ScheduledSnapshotsConfigResponseComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return ScheduledSnapshotsConfigResponseComposerV1beta1(
      enabled: (map['enabled'] as bool).input(),
      snapshotCreationSchedule: (map['snapshotCreationSchedule'] as String).input(),
      snapshotLocation: (map['snapshotLocation'] as String).input(),
      timeZone: (map['timeZone'] as String).input(),
    );
  }
}

