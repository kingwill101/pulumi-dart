// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'performance_config_dump_parallel_level.dart';

/// Performance configuration definition.
class PerformanceConfig {
  /// Initial dump parallelism level.
  final pulumi.Input<PerformanceConfigDumpParallelLevel>? dumpParallelLevel;

  /// Creates a new [PerformanceConfig].
  /// [dumpParallelLevel] Initial dump parallelism level.
  const PerformanceConfig({
    this.dumpParallelLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dumpParallelLevel': ?pulumi.Input.mapOptionalInputValue<PerformanceConfigDumpParallelLevel, String>(dumpParallelLevel, (value) => value.wireValue),
    };
  }

  factory PerformanceConfig.fromMap(Map<String, dynamic> map) {
    return PerformanceConfig(
      dumpParallelLevel: (() { final guardedValue = map['dumpParallelLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PerformanceConfigDumpParallelLevel.fromValue(guardedValue as String)); })(),
    );
  }
}
