// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_fleet_observability_base_feature_state_response_gkehub_v1beta.dart';

/// Feature state for monitoring feature.
class FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1beta {
  /// The base feature state of fleet monitoring feature.
  final pulumi.Input<FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1beta> state;

  /// Creates a new [FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1beta].
  /// [state] The base feature state of fleet monitoring feature.
  const FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1beta({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': pulumi.Input.mapInputValue<FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1beta, Map<String, dynamic>>(state, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1beta(
      state: pulumi.Input.fromValue(FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1beta.fromMap((map['state']! as Map).cast<String, dynamic>())),
    );
  }
}
