// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_logging_config_response.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpecResponse {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final pulumi.Input<FleetObservabilityLoggingConfigResponse> loggingConfig;

  /// Creates a new [FleetObservabilityFeatureSpecResponse].
  /// [loggingConfig] Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  FleetObservabilityFeatureSpecResponse({
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig': pulumi.Input.mapInputValue<FleetObservabilityLoggingConfigResponse, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFeatureSpecResponse.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFeatureSpecResponse(
      loggingConfig: (FleetObservabilityLoggingConfigResponse.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

