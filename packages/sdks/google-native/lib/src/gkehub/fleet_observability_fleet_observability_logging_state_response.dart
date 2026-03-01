// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_fleet_observability_base_feature_state_response.dart';

/// Feature state for logging feature.
class FleetObservabilityFleetObservabilityLoggingStateResponse {
  /// The base feature state of fleet default log.
  final FleetObservabilityFleetObservabilityBaseFeatureStateResponse defaultLog;
  /// The base feature state of fleet scope log.
  final FleetObservabilityFleetObservabilityBaseFeatureStateResponse scopeLog;

  /// Creates a new [FleetObservabilityFleetObservabilityLoggingStateResponse].
  /// [defaultLog] The base feature state of fleet default log.
  /// [scopeLog] The base feature state of fleet scope log.
  FleetObservabilityFleetObservabilityLoggingStateResponse({
    required this.defaultLog,
    required this.scopeLog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLog': defaultLog.toMap(),
      'scopeLog': scopeLog.toMap(),
    };
  }

  factory FleetObservabilityFleetObservabilityLoggingStateResponse.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityLoggingStateResponse(
      defaultLog: FleetObservabilityFleetObservabilityBaseFeatureStateResponse.fromMap((map['defaultLog'] as Map).cast<String, dynamic>()),
      scopeLog: FleetObservabilityFleetObservabilityBaseFeatureStateResponse.fromMap((map['scopeLog'] as Map).cast<String, dynamic>()),
    );
  }
}

