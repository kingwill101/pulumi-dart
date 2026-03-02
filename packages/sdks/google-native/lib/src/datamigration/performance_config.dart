// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'performance_config_dump_parallel_level.dart';

/// Performance configuration definition.
class PerformanceConfig {
  /// Initial dump parallelism level.
  final pulumi.Input<PerformanceConfigDumpParallelLevel>? dumpParallelLevel;

  /// Creates a new [PerformanceConfig].
  /// [dumpParallelLevel] Initial dump parallelism level.
  PerformanceConfig({
    this.dumpParallelLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dumpParallelLevel': ?pulumi.Input.mapOptionalInputValue<PerformanceConfigDumpParallelLevel, String>(dumpParallelLevel, (value) => value.value),
    };
  }

  factory PerformanceConfig.fromMap(Map<String, dynamic> map) {
    return PerformanceConfig(
      dumpParallelLevel: map['dumpParallelLevel'] == null ? null : (PerformanceConfigDumpParallelLevel.fromValue(map['dumpParallelLevel']! as String)).input(),
    );
  }
}

