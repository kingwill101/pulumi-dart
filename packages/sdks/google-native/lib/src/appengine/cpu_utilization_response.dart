// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target scaling by CPU usage.
class CpuUtilizationResponse {
  /// Period of time over which CPU utilization is calculated.
  final pulumi.Input<String> aggregationWindowLength;
  /// Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
  final pulumi.Input<double> targetUtilization;

  /// Creates a new [CpuUtilizationResponse].
  /// [aggregationWindowLength] Period of time over which CPU utilization is calculated.
  /// [targetUtilization] Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
  CpuUtilizationResponse({
    required this.aggregationWindowLength,
    required this.targetUtilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationWindowLength': aggregationWindowLength,
      'targetUtilization': targetUtilization,
    };
  }

  factory CpuUtilizationResponse.fromMap(Map<String, dynamic> map) {
    return CpuUtilizationResponse(
      aggregationWindowLength: pulumi.Input.fromValue(map['aggregationWindowLength'] as String),
      targetUtilization: pulumi.Input.fromValue(map['targetUtilization'] as double),
    );
  }
}

