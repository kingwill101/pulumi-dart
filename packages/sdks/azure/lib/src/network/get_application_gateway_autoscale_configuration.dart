// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayAutoscaleConfiguration {
  /// Maximum capacity for autoscaling.
  final pulumi.Input<int> maxCapacity;

  /// Minimum capacity for autoscaling.
  final pulumi.Input<int> minCapacity;

  /// Creates a new [GetApplicationGatewayAutoscaleConfiguration].
  /// [maxCapacity] Maximum capacity for autoscaling.
  /// [minCapacity] Minimum capacity for autoscaling.
  GetApplicationGatewayAutoscaleConfiguration({
    required this.maxCapacity,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': maxCapacity,
      'minCapacity': minCapacity,
    };
  }

  factory GetApplicationGatewayAutoscaleConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationGatewayAutoscaleConfiguration(
      maxCapacity: pulumi.Input.fromValue(map['maxCapacity'] as int),
      minCapacity: pulumi.Input.fromValue(map['minCapacity'] as int),
    );
  }
}
