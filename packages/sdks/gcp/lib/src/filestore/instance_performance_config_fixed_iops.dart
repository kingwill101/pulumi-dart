// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePerformanceConfigFixedIops {
  /// The number of IOPS to provision for the instance.
  /// maxIops must be in multiple of 1000.
  final pulumi.Input<int?>? maxIops;

  /// Creates a new [InstancePerformanceConfigFixedIops].
  /// [maxIops] The number of IOPS to provision for the instance.
  const InstancePerformanceConfigFixedIops({
    this.maxIops,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxIops': ?maxIops,
    };
  }

  factory InstancePerformanceConfigFixedIops.fromMap(Map<String, dynamic> map) {
    return InstancePerformanceConfigFixedIops(
      maxIops: (() { final guardedValue = map['maxIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
