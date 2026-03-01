// ignore_for_file: unused_element, unnecessary_cast


class InstancePersistenceConfigRdbConfig {
  /// Optional. Period between RDB snapshots.
  /// Possible values:
  /// ONE_HOUR
  /// SIX_HOURS
  /// TWELVE_HOURS
  /// TWENTY_FOUR_HOURS
  final String? rdbSnapshotPeriod;
  /// Optional. Time that the first snapshot was/will be attempted, and to which future
  /// snapshots will be aligned. If not provided, the current time will be
  /// used.
  final String? rdbSnapshotStartTime;

  /// Creates a new [InstancePersistenceConfigRdbConfig].
  /// [rdbSnapshotPeriod] Optional. Period between RDB snapshots.
  /// [rdbSnapshotStartTime] Optional. Time that the first snapshot was/will be attempted, and to which future
  InstancePersistenceConfigRdbConfig({
    this.rdbSnapshotPeriod,
    this.rdbSnapshotStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rdbSnapshotPeriod': ?rdbSnapshotPeriod,
      'rdbSnapshotStartTime': ?rdbSnapshotStartTime,
    };
  }

  factory InstancePersistenceConfigRdbConfig.fromMap(Map<String, dynamic> map) {
    return InstancePersistenceConfigRdbConfig(
      rdbSnapshotPeriod: map['rdbSnapshotPeriod'] == null ? null : map['rdbSnapshotPeriod'] as String,
      rdbSnapshotStartTime: map['rdbSnapshotStartTime'] == null ? null : map['rdbSnapshotStartTime'] as String,
    );
  }
}

