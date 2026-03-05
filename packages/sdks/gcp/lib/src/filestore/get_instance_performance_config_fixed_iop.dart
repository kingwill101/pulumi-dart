// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancePerformanceConfigFixedIop {
  /// The number of IOPS to provision for the instance.
  /// max_iops must be in multiple of 1000.
  final pulumi.Input<int> maxIops;

  /// Creates a new [GetInstancePerformanceConfigFixedIop].
  /// [maxIops] The number of IOPS to provision for the instance.
  GetInstancePerformanceConfigFixedIop({
    required this.maxIops,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxIops': maxIops,
    };
  }

  factory GetInstancePerformanceConfigFixedIop.fromMap(Map<String, dynamic> map) {
    return GetInstancePerformanceConfigFixedIop(
      maxIops: pulumi.Input.fromValue(map['maxIops'] as int),
    );
  }
}

