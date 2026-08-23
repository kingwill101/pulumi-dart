// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePersistenceConfig {
  /// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  /// - DISABLED: 	Persistence is disabled for the instance, and any existing snapshots are deleted.
  /// - RDB: RDB based Persistence is enabled.
  /// Possible values are: `DISABLED`, `RDB`.
  final pulumi.Input<String>? persistenceMode;
  /// (Output)
  /// Output only. The next time that a snapshot attempt is scheduled to occur.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up
  /// to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? rdbNextSnapshotTime;
  /// Optional. Available snapshot periods for scheduling.
  /// - ONE_HOUR:	Snapshot every 1 hour.
  /// - SIX_HOURS:	Snapshot every 6 hours.
  /// - TWELVE_HOURS:	Snapshot every 12 hours.
  /// - TWENTY_FOUR_HOURS:	Snapshot every 24 hours.
  /// Possible values are: `ONE_HOUR`, `SIX_HOURS`, `TWELVE_HOURS`, `TWENTY_FOUR_HOURS`.
  final pulumi.Input<String>? rdbSnapshotPeriod;
  /// Optional. Date and time that the first snapshot was/will be attempted,
  /// and to which future snapshots will be aligned. If not provided,
  /// the current time will be used.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution
  /// and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? rdbSnapshotStartTime;

  /// Creates a new [InstancePersistenceConfig].
  /// [persistenceMode] Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  /// [rdbNextSnapshotTime] (Output)
  /// [rdbSnapshotPeriod] Optional. Available snapshot periods for scheduling.
  /// [rdbSnapshotStartTime] Optional. Date and time that the first snapshot was/will be attempted,
  const InstancePersistenceConfig({
    this.persistenceMode,
    this.rdbNextSnapshotTime,
    this.rdbSnapshotPeriod,
    this.rdbSnapshotStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistenceMode': ?persistenceMode,
      'rdbNextSnapshotTime': ?rdbNextSnapshotTime,
      'rdbSnapshotPeriod': ?rdbSnapshotPeriod,
      'rdbSnapshotStartTime': ?rdbSnapshotStartTime,
    };
  }

  factory InstancePersistenceConfig.fromMap(Map<String, dynamic> map) {
    return InstancePersistenceConfig(
      persistenceMode: (() { final guardedValue = map['persistenceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdbNextSnapshotTime: (() { final guardedValue = map['rdbNextSnapshotTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdbSnapshotPeriod: (() { final guardedValue = map['rdbSnapshotPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdbSnapshotStartTime: (() { final guardedValue = map['rdbSnapshotStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
