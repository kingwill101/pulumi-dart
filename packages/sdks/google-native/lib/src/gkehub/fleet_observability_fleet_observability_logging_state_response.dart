// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_fleet_observability_base_feature_state_response.dart';

/// Feature state for logging feature.
class FleetObservabilityFleetObservabilityLoggingStateResponse {
  /// The base feature state of fleet default log.
  final pulumi.Input<FleetObservabilityFleetObservabilityBaseFeatureStateResponse> defaultLog;
  /// The base feature state of fleet scope log.
  final pulumi.Input<FleetObservabilityFleetObservabilityBaseFeatureStateResponse> scopeLog;

  /// Creates a new [FleetObservabilityFleetObservabilityLoggingStateResponse].
  /// [defaultLog] The base feature state of fleet default log.
  /// [scopeLog] The base feature state of fleet scope log.
  const FleetObservabilityFleetObservabilityLoggingStateResponse({
    required this.defaultLog,
    required this.scopeLog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLog': pulumi.Input.mapInputValue<FleetObservabilityFleetObservabilityBaseFeatureStateResponse, Map<String, dynamic>>(defaultLog, (value) => value.toMap()),
      'scopeLog': pulumi.Input.mapInputValue<FleetObservabilityFleetObservabilityBaseFeatureStateResponse, Map<String, dynamic>>(scopeLog, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFleetObservabilityLoggingStateResponse.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityLoggingStateResponse(
      defaultLog: pulumi.Input.fromValue(FleetObservabilityFleetObservabilityBaseFeatureStateResponse.fromMap((map['defaultLog']! as Map).cast<String, dynamic>())),
      scopeLog: pulumi.Input.fromValue(FleetObservabilityFleetObservabilityBaseFeatureStateResponse.fromMap((map['scopeLog']! as Map).cast<String, dynamic>())),
    );
  }
}

