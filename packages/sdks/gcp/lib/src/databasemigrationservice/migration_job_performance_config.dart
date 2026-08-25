// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrationJobPerformanceConfig {
  /// Initial dump parallelism level.
  /// Possible values are: `MIN`, `OPTIMAL`, `MAX`.
  final pulumi.Input<String?>? dumpParallelLevel;

  /// Creates a new [MigrationJobPerformanceConfig].
  /// [dumpParallelLevel] Initial dump parallelism level.
  const MigrationJobPerformanceConfig({
    this.dumpParallelLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dumpParallelLevel': ?dumpParallelLevel,
    };
  }

  factory MigrationJobPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return MigrationJobPerformanceConfig(
      dumpParallelLevel: (() { final guardedValue = map['dumpParallelLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
