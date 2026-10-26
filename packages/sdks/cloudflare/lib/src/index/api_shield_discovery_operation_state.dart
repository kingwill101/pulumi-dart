// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiShieldDiscoveryOperation resources.
class ApiShieldDiscoveryOperationState {
  /// UUID.
  final pulumi.Input<String?>? discoveryId;
  /// Mark state of operation in API Discovery
  /// * `review` - Mark operation as for review
  /// * `ignored` - Mark operation as ignored
  /// Available values: "review", "ignored".
  final pulumi.Input<String?>? state;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ApiShieldDiscoveryOperationState].
  /// [discoveryId] UUID.
  /// [state] Mark state of operation in API Discovery
  /// [zoneId] Identifier.
  const ApiShieldDiscoveryOperationState({
    this.discoveryId,
    this.state,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryId': ?discoveryId,
      'state': ?state,
      'zoneId': ?zoneId,
    };
  }

  factory ApiShieldDiscoveryOperationState.fromMap(Map<String, dynamic> map) {
    return ApiShieldDiscoveryOperationState(
      discoveryId: (() { final guardedValue = map['discoveryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
