// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource health details
class HealthResponse {
  /// Health state of the resource
  final pulumi.Input<String> healthState;
  /// Reasons impacting health state
  final pulumi.Input<String> impactingReasons;

  /// Creates a new [HealthResponse].
  /// [healthState] Health state of the resource
  /// [impactingReasons] Reasons impacting health state
  HealthResponse({
    required this.healthState,
    required this.impactingReasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthState': healthState,
      'impactingReasons': impactingReasons,
    };
  }

  factory HealthResponse.fromMap(Map<String, dynamic> map) {
    return HealthResponse(
      healthState: (map['healthState'] as String).input(),
      impactingReasons: (map['impactingReasons'] as String).input(),
    );
  }
}

