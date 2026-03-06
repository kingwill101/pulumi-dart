// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDropletAutoscaleCurrentUtilization {
  /// Average CPU utilization
  final pulumi.Input<double> cpu;
  /// Average Memory utilization
  final pulumi.Input<double> memory;

  /// Creates a new [GetDropletAutoscaleCurrentUtilization].
  /// [cpu] Average CPU utilization
  /// [memory] Average Memory utilization
  const GetDropletAutoscaleCurrentUtilization({
    required this.cpu,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'memory': memory,
    };
  }

  factory GetDropletAutoscaleCurrentUtilization.fromMap(Map<String, dynamic> map) {
    return GetDropletAutoscaleCurrentUtilization(
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      memory: pulumi.Input.fromValue(map['memory'] as double),
    );
  }
}

