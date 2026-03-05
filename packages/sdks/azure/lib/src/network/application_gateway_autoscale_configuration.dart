// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayAutoscaleConfiguration {
  /// Maximum capacity for autoscaling. Accepted values are in the range `2` to `125`.
  final pulumi.Input<int>? maxCapacity;
  /// Minimum capacity for autoscaling. Accepted values are in the range `0` to `100`.
  final pulumi.Input<int> minCapacity;

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
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minCapacity: pulumi.Input.fromValue(map['minCapacity'] as int),
    );
  }
}

