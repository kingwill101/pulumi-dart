// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayAutoscaleConfiguration {
  /// Maximum capacity for autoscaling. Accepted values are in the range `2` to `125`.
  final pulumi.Input<int?>? maxCapacity;
  /// Minimum capacity for autoscaling. Accepted values are in the range `0` to `100`.
  final pulumi.Input<int> minCapacity;

  /// Creates a new [ApplicationGatewayAutoscaleConfiguration].
  /// [maxCapacity] Maximum capacity for autoscaling. Accepted values are in the range `2` to `125`.
  /// [minCapacity] Minimum capacity for autoscaling. Accepted values are in the range `0` to `100`.
  const ApplicationGatewayAutoscaleConfiguration({
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
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minCapacity: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minCapacity'])),
    );
  }
}
