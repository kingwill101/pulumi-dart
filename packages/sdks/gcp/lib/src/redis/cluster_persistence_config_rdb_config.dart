// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterPersistenceConfigRdbConfig {
  /// Optional. Available snapshot periods for scheduling.
  /// - ONE_HOUR:	Snapshot every 1 hour.
  /// - SIX_HOURS:	Snapshot every 6 hours.
  /// - TWELVE_HOURS:	Snapshot every 12 hours.
  /// - TWENTY_FOUR_HOURS:	Snapshot every 24 hours.
  /// Possible values are: `SNAPSHOT_PERIOD_UNSPECIFIED`, `ONE_HOUR`, `SIX_HOURS`, `TWELVE_HOURS`, `TWENTY_FOUR_HOURS`.
  final pulumi.Input<String>? rdbSnapshotPeriod;
  /// The time that the first snapshot was/will be attempted, and to which
  /// future snapshots will be aligned.
  /// If not provided, the current time will be used.
  final pulumi.Input<String>? rdbSnapshotStartTime;

  /// Creates a new [ClusterPersistenceConfigRdbConfig].
  /// [rdbSnapshotPeriod] Optional. Available snapshot periods for scheduling.
  /// [rdbSnapshotStartTime] The time that the first snapshot was/will be attempted, and to which
  ClusterPersistenceConfigRdbConfig({
    this.rdbSnapshotPeriod,
    this.rdbSnapshotStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rdbSnapshotPeriod': ?rdbSnapshotPeriod,
      'rdbSnapshotStartTime': ?rdbSnapshotStartTime,
    };
  }

  factory ClusterPersistenceConfigRdbConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPersistenceConfigRdbConfig(
      rdbSnapshotPeriod: (() { final guardedValue = map['rdbSnapshotPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdbSnapshotStartTime: (() { final guardedValue = map['rdbSnapshotStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

