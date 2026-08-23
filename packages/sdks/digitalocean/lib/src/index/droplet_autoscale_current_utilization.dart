// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DropletAutoscaleCurrentUtilization {
  /// Average CPU utilization
  final pulumi.Input<double>? cpu;
  /// Average Memory utilization
  final pulumi.Input<double>? memory;

  /// Creates a new [DropletAutoscaleCurrentUtilization].
  /// [cpu] Average CPU utilization
  /// [memory] Average Memory utilization
  const DropletAutoscaleCurrentUtilization({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory DropletAutoscaleCurrentUtilization.fromMap(Map<String, dynamic> map) {
    return DropletAutoscaleCurrentUtilization(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
