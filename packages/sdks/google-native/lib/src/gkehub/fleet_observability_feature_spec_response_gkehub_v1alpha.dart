// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_logging_config_response_gkehub_v1alpha.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpecResponseGkehubV1alpha {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final pulumi.Input<FleetObservabilityLoggingConfigResponseGkehubV1alpha> loggingConfig;

  /// Creates a new [FleetObservabilityFeatureSpecResponseGkehubV1alpha].
  /// [loggingConfig] Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  const FleetObservabilityFeatureSpecResponseGkehubV1alpha({
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig': pulumi.Input.mapInputValue<FleetObservabilityLoggingConfigResponseGkehubV1alpha, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFeatureSpecResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFeatureSpecResponseGkehubV1alpha(
      loggingConfig: pulumi.Input.fromValue(FleetObservabilityLoggingConfigResponseGkehubV1alpha.fromMap((map['loggingConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

