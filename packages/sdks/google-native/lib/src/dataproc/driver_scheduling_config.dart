// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Driver scheduling configuration.
class DriverSchedulingConfig {
  /// The amount of memory in MB the driver is requesting.
  final pulumi.Input<int> memoryMb;
  /// The number of vCPUs the driver is requesting.
  final pulumi.Input<int> vcores;

  /// Creates a new [DriverSchedulingConfig].
  /// [memoryMb] The amount of memory in MB the driver is requesting.
  /// [vcores] The number of vCPUs the driver is requesting.
  DriverSchedulingConfig({
    required this.memoryMb,
    required this.vcores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memoryMb': memoryMb,
      'vcores': vcores,
    };
  }

  factory DriverSchedulingConfig.fromMap(Map<String, dynamic> map) {
    return DriverSchedulingConfig(
      memoryMb: (map['memoryMb'] as int).input(),
      vcores: (map['vcores'] as int).input(),
    );
  }
}

