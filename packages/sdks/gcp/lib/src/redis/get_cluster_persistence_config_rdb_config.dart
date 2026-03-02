// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterPersistenceConfigRdbConfig {
  /// Optional. Available snapshot periods for scheduling.
  ///
  /// - ONE_HOUR:	Snapshot every 1 hour.
  /// - SIX_HOURS:	Snapshot every 6 hours.
  /// - TWELVE_HOURS:	Snapshot every 12 hours.
  /// - TWENTY_FOUR_HOURS:	Snapshot every 24 hours. Possible values: ["SNAPSHOT_PERIOD_UNSPECIFIED", "ONE_HOUR", "SIX_HOURS", "TWELVE_HOURS", "TWENTY_FOUR_HOURS"]
  final pulumi.Input<String> rdbSnapshotPeriod;
  /// The time that the first snapshot was/will be attempted, and to which
  /// future snapshots will be aligned.
  /// If not provided, the current time will be used.
  final pulumi.Input<String> rdbSnapshotStartTime;

  /// Creates a new [GetClusterPersistenceConfigRdbConfig].
  /// [rdbSnapshotPeriod] Optional. Available snapshot periods for scheduling.
  /// [rdbSnapshotStartTime] The time that the first snapshot was/will be attempted, and to which
  GetClusterPersistenceConfigRdbConfig({
    required this.rdbSnapshotPeriod,
    required this.rdbSnapshotStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rdbSnapshotPeriod': rdbSnapshotPeriod,
      'rdbSnapshotStartTime': rdbSnapshotStartTime,
    };
  }

  factory GetClusterPersistenceConfigRdbConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterPersistenceConfigRdbConfig(
      rdbSnapshotPeriod: (map['rdbSnapshotPeriod'] as String).input(),
      rdbSnapshotStartTime: (map['rdbSnapshotStartTime'] as String).input(),
    );
  }
}

