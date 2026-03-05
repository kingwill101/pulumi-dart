// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_fleet_observability_logging_state_response.dart';
import 'fleet_observability_fleet_observability_monitoring_state_response.dart';

/// **FleetObservability**: Hub-wide Feature for FleetObservability feature. state.
class FleetObservabilityFeatureStateResponse {
  /// The feature state of default logging.
  final pulumi.Input<FleetObservabilityFleetObservabilityLoggingStateResponse> logging;
  /// The feature state of fleet monitoring.
  final pulumi.Input<FleetObservabilityFleetObservabilityMonitoringStateResponse> monitoring;

  /// Creates a new [FleetObservabilityFeatureStateResponse].
  /// [logging] The feature state of default logging.
  /// [monitoring] The feature state of fleet monitoring.
  FleetObservabilityFeatureStateResponse({
    required this.logging,
    required this.monitoring,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logging': pulumi.Input.mapInputValue<FleetObservabilityFleetObservabilityLoggingStateResponse, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'monitoring': pulumi.Input.mapInputValue<FleetObservabilityFleetObservabilityMonitoringStateResponse, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFeatureStateResponse.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFeatureStateResponse(
      logging: pulumi.Input.fromValue(FleetObservabilityFleetObservabilityLoggingStateResponse.fromMap((map['logging']! as Map).cast<String, dynamic>())),
      monitoring: pulumi.Input.fromValue(FleetObservabilityFleetObservabilityMonitoringStateResponse.fromMap((map['monitoring']! as Map).cast<String, dynamic>())),
    );
  }
}

