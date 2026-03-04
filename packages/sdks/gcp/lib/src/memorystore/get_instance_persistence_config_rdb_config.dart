// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancePersistenceConfigRdbConfig {
  /// Optional. Period between RDB snapshots.
  /// Possible values:
  /// ONE_HOUR
  /// SIX_HOURS
  /// TWELVE_HOURS
  /// TWENTY_FOUR_HOURS
  final pulumi.Input<String> rdbSnapshotPeriod;

  /// Optional. Time that the first snapshot was/will be attempted, and to which future
  /// snapshots will be aligned. If not provided, the current time will be
  /// used.
  final pulumi.Input<String> rdbSnapshotStartTime;

  /// Creates a new [GetInstancePersistenceConfigRdbConfig].
  /// [rdbSnapshotPeriod] Optional. Period between RDB snapshots.
  /// [rdbSnapshotStartTime] Optional. Time that the first snapshot was/will be attempted, and to which future
  GetInstancePersistenceConfigRdbConfig({
    required this.rdbSnapshotPeriod,
    required this.rdbSnapshotStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rdbSnapshotPeriod': rdbSnapshotPeriod,
      'rdbSnapshotStartTime': rdbSnapshotStartTime,
    };
  }

  factory GetInstancePersistenceConfigRdbConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstancePersistenceConfigRdbConfig(
      rdbSnapshotPeriod: pulumi.Input.fromValue(
        map['rdbSnapshotPeriod'] as String,
      ),
      rdbSnapshotStartTime: pulumi.Input.fromValue(
        map['rdbSnapshotStartTime'] as String,
      ),
    );
  }
}
