// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancePerformanceConfigIopsPerTb {
  /// The instance max IOPS will be calculated by multiplying
  /// the capacity of the instance (TB) by max_iops_per_tb,
  /// and rounding to the nearest 1000. The instance max IOPS
  /// will be changed dynamically based on the instance
  /// capacity.
  final pulumi.Input<int> maxIopsPerTb;

  /// Creates a new [GetInstancePerformanceConfigIopsPerTb].
  /// [maxIopsPerTb] The instance max IOPS will be calculated by multiplying
  GetInstancePerformanceConfigIopsPerTb({
    required this.maxIopsPerTb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxIopsPerTb': maxIopsPerTb,
    };
  }

  factory GetInstancePerformanceConfigIopsPerTb.fromMap(Map<String, dynamic> map) {
    return GetInstancePerformanceConfigIopsPerTb(
      maxIopsPerTb: pulumi.Input.fromValue(map['maxIopsPerTb'] as int),
    );
  }
}

