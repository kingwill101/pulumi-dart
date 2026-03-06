// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_fleet_observability_base_feature_state_response.dart';

/// Feature state for monitoring feature.
class FleetObservabilityFleetObservabilityMonitoringStateResponse {
  /// The base feature state of fleet monitoring feature.
  final pulumi.Input<FleetObservabilityFleetObservabilityBaseFeatureStateResponse> state;

  /// Creates a new [FleetObservabilityFleetObservabilityMonitoringStateResponse].
  /// [state] The base feature state of fleet monitoring feature.
  const FleetObservabilityFleetObservabilityMonitoringStateResponse({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': pulumi.Input.mapInputValue<FleetObservabilityFleetObservabilityBaseFeatureStateResponse, Map<String, dynamic>>(state, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFleetObservabilityMonitoringStateResponse.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityMonitoringStateResponse(
      state: pulumi.Input.fromValue(FleetObservabilityFleetObservabilityBaseFeatureStateResponse.fromMap((map['state']! as Map).cast<String, dynamic>())),
    );
  }
}

