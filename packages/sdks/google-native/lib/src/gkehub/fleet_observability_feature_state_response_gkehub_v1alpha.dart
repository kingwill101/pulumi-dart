// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_fleet_observability_logging_state_response_gkehub_v1alpha.dart';
import 'fleet_observability_fleet_observability_monitoring_state_response_gkehub_v1alpha.dart';

/// **FleetObservability**: Hub-wide Feature for FleetObservability feature. state.
class FleetObservabilityFeatureStateResponseGkehubV1alpha {
  /// The feature state of default logging.
  final pulumi.Input<FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1alpha> logging;
  /// The feature state of fleet monitoring.
  final pulumi.Input<FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1alpha> monitoring;

  /// Creates a new [FleetObservabilityFeatureStateResponseGkehubV1alpha].
  /// [logging] The feature state of default logging.
  /// [monitoring] The feature state of fleet monitoring.
  const FleetObservabilityFeatureStateResponseGkehubV1alpha({
    required this.logging,
    required this.monitoring,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logging': pulumi.Input.mapInputValue<FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1alpha, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'monitoring': pulumi.Input.mapInputValue<FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1alpha, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFeatureStateResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFeatureStateResponseGkehubV1alpha(
      logging: pulumi.Input.fromValue(FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1alpha.fromMap((map['logging']! as Map).cast<String, dynamic>())),
      monitoring: pulumi.Input.fromValue(FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1alpha.fromMap((map['monitoring']! as Map).cast<String, dynamic>())),
    );
  }
}
