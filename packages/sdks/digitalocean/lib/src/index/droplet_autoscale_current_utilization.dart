// ignore_for_file: unused_element, unnecessary_cast


class DropletAutoscaleCurrentUtilization {
  /// Average CPU utilization
  final double? cpu;
  /// Average Memory utilization
  final double? memory;

  /// Creates a new [DropletAutoscaleCurrentUtilization].
  /// [cpu] Average CPU utilization
  /// [memory] Average Memory utilization
  DropletAutoscaleCurrentUtilization({
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
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memory: map['memory'] == null ? null : map['memory'] as double,
    );
  }
}

