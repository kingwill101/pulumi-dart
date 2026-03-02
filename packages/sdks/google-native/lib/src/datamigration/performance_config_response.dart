// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Performance configuration definition.
class PerformanceConfigResponse {
  /// Initial dump parallelism level.
  final pulumi.Input<String> dumpParallelLevel;

  /// Creates a new [PerformanceConfigResponse].
  /// [dumpParallelLevel] Initial dump parallelism level.
  PerformanceConfigResponse({
    required this.dumpParallelLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dumpParallelLevel': dumpParallelLevel,
    };
  }

  factory PerformanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return PerformanceConfigResponse(
      dumpParallelLevel: (map['dumpParallelLevel'] as String).input(),
    );
  }
}

