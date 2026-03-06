// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_fleet_observability_logging_state_response_gkehub_v1beta.dart';
import 'fleet_observability_fleet_observability_monitoring_state_response_gkehub_v1beta.dart';

/// **FleetObservability**: Hub-wide Feature for FleetObservability feature. state.
class FleetObservabilityFeatureStateResponseGkehubV1beta {
  /// The feature state of default logging.
  final pulumi.Input<FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1beta> logging;
  /// The feature state of fleet monitoring.
  final pulumi.Input<FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1beta> monitoring;

  /// Creates a new [FleetObservabilityFeatureStateResponseGkehubV1beta].
  /// [logging] The feature state of default logging.
  /// [monitoring] The feature state of fleet monitoring.
  const FleetObservabilityFeatureStateResponseGkehubV1beta({
    required this.logging,
    required this.monitoring,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logging': pulumi.Input.mapInputValue<FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1beta, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'monitoring': pulumi.Input.mapInputValue<FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1beta, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFeatureStateResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFeatureStateResponseGkehubV1beta(
      logging: pulumi.Input.fromValue(FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1beta.fromMap((map['logging']! as Map).cast<String, dynamic>())),
      monitoring: pulumi.Input.fromValue(FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1beta.fromMap((map['monitoring']! as Map).cast<String, dynamic>())),
    );
  }
}

