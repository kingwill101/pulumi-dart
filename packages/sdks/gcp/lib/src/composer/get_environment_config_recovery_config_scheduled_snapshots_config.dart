// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig {
  /// When enabled, Cloud Composer periodically saves snapshots of your environment to a Cloud Storage bucket.
  final pulumi.Input<bool> enabled;

  /// Snapshot schedule, in the unix-cron format.
  final pulumi.Input<String> snapshotCreationSchedule;

  /// the URI of a bucket folder where to save the snapshot.
  final pulumi.Input<String> snapshotLocation;

  /// A time zone for the schedule. This value is a time offset and does not take into account daylight saving time changes. Valid values are from UTC-12 to UTC+12. Examples: UTC, UTC-01, UTC+03.
  final pulumi.Input<String> timeZone;

  /// Creates a new [GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig].
  /// [enabled] When enabled, Cloud Composer periodically saves snapshots of your environment to a Cloud Storage bucket.
  /// [snapshotCreationSchedule] Snapshot schedule, in the unix-cron format.
  /// [snapshotLocation] the URI of a bucket folder where to save the snapshot.
  /// [timeZone] A time zone for the schedule. This value is a time offset and does not take into account daylight saving time changes. Valid values are from UTC-12 to UTC+12. Examples: UTC, UTC-01, UTC+03.
  GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig({
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

  factory GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      snapshotCreationSchedule: pulumi.Input.fromValue(
        map['snapshotCreationSchedule'] as String,
      ),
      snapshotLocation: pulumi.Input.fromValue(
        map['snapshotLocation'] as String,
      ),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}
