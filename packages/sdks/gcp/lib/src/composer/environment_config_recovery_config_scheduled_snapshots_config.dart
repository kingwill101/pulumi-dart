// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig {
  /// When enabled, Cloud Composer periodically saves snapshots of your environment to a Cloud Storage bucket.
  final pulumi.Input<bool> enabled;
  /// Snapshot schedule, in the unix-cron format.
  final pulumi.Input<String>? snapshotCreationSchedule;
  /// the URI of a bucket folder where to save the snapshot.
  final pulumi.Input<String>? snapshotLocation;
  /// A time zone for the schedule. This value is a time offset and does not take into account daylight saving time changes. Valid values are from UTC-12 to UTC+12. Examples: UTC, UTC-01, UTC+03.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig].
  /// [enabled] When enabled, Cloud Composer periodically saves snapshots of your environment to a Cloud Storage bucket.
  /// [snapshotCreationSchedule] Snapshot schedule, in the unix-cron format.
  /// [snapshotLocation] the URI of a bucket folder where to save the snapshot.
  /// [timeZone] A time zone for the schedule. This value is a time offset and does not take into account daylight saving time changes. Valid values are from UTC-12 to UTC+12. Examples: UTC, UTC-01, UTC+03.
  EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig({
    required this.enabled,
    this.snapshotCreationSchedule,
    this.snapshotLocation,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'snapshotCreationSchedule': ?snapshotCreationSchedule,
      'snapshotLocation': ?snapshotLocation,
      'timeZone': ?timeZone,
    };
  }

  factory EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigRecoveryConfigScheduledSnapshotsConfig(
      enabled: (map['enabled'] as bool).input(),
      snapshotCreationSchedule: map['snapshotCreationSchedule'] == null ? null : (map['snapshotCreationSchedule'] as String).input(),
      snapshotLocation: map['snapshotLocation'] == null ? null : (map['snapshotLocation'] as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
    );
  }
}

