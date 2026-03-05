// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_fleet_observability_base_feature_state_response_gkehub_v1alpha.dart';

/// Feature state for logging feature.
class FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1alpha {
  /// The base feature state of fleet default log.
  final pulumi.Input<FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha> defaultLog;
  /// The base feature state of fleet scope log.
  final pulumi.Input<FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha> scopeLog;

  /// Creates a new [FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1alpha].
  /// [defaultLog] The base feature state of fleet default log.
  /// [scopeLog] The base feature state of fleet scope log.
  FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1alpha({
    required this.defaultLog,
    required this.scopeLog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLog': pulumi.Input.mapInputValue<FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha, Map<String, dynamic>>(defaultLog, (value) => value.toMap()),
      'scopeLog': pulumi.Input.mapInputValue<FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha, Map<String, dynamic>>(scopeLog, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1alpha(
      defaultLog: pulumi.Input.fromValue(FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha.fromMap((map['defaultLog']! as Map).cast<String, dynamic>())),
      scopeLog: pulumi.Input.fromValue(FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha.fromMap((map['scopeLog']! as Map).cast<String, dynamic>())),
    );
  }
}

