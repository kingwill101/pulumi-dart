// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Constraints for Fault Simulation action.
class FaultSimulationConstraintsResponse {
  /// The absolute expiration timestamp (UTC) after which this fault simulation should be stopped if it's still active.
  final pulumi.Input<String>? expirationTime;

  /// Creates a new [FaultSimulationConstraintsResponse].
  /// [expirationTime] The absolute expiration timestamp (UTC) after which this fault simulation should be stopped if it's still active.
  FaultSimulationConstraintsResponse({
    this.expirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': ?expirationTime,
    };
  }

  factory FaultSimulationConstraintsResponse.fromMap(Map<String, dynamic> map) {
    return FaultSimulationConstraintsResponse(
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

