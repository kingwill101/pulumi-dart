// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewayAutoscaleConfiguration {
  /// Maximum capacity for autoscaling. Accepted values are in the range `2` to `125`.
  final int? maxCapacity;
  /// Minimum capacity for autoscaling. Accepted values are in the range `0` to `100`.
  final int minCapacity;

  /// Creates a new [ApplicationGatewayAutoscaleConfiguration].
  /// [maxCapacity] Maximum capacity for autoscaling. Accepted values are in the range `2` to `125`.
  /// [minCapacity] Minimum capacity for autoscaling. Accepted values are in the range `0` to `100`.
  ApplicationGatewayAutoscaleConfiguration({
    this.maxCapacity,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': ?maxCapacity,
      'minCapacity': minCapacity,
    };
  }

  factory ApplicationGatewayAutoscaleConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayAutoscaleConfiguration(
      maxCapacity: map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      minCapacity: map['minCapacity'] as int,
    );
  }
}

