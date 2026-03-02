// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePerformanceConfigFixedIops {
  /// The number of IOPS to provision for the instance.
  /// max_iops must be in multiple of 1000.
  final pulumi.Input<int>? maxIops;

  /// Creates a new [InstancePerformanceConfigFixedIops].
  /// [maxIops] The number of IOPS to provision for the instance.
  InstancePerformanceConfigFixedIops({
    this.maxIops,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxIops': ?maxIops,
    };
  }

  factory InstancePerformanceConfigFixedIops.fromMap(Map<String, dynamic> map) {
    return InstancePerformanceConfigFixedIops(
      maxIops: map['maxIops'] == null ? null : (map['maxIops'] as int).input(),
    );
  }
}

