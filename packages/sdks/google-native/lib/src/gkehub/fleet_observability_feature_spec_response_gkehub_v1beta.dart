// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_logging_config_response_gkehub_v1beta.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpecResponseGkehubV1beta {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final pulumi.Input<FleetObservabilityLoggingConfigResponseGkehubV1beta>
  loggingConfig;

  /// Creates a new [FleetObservabilityFeatureSpecResponseGkehubV1beta].
  /// [loggingConfig] Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  FleetObservabilityFeatureSpecResponseGkehubV1beta({
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig':
          pulumi.Input.mapInputValue<
            FleetObservabilityLoggingConfigResponseGkehubV1beta,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFeatureSpecResponseGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return FleetObservabilityFeatureSpecResponseGkehubV1beta(
      loggingConfig: pulumi.Input.fromValue(
        FleetObservabilityLoggingConfigResponseGkehubV1beta.fromMap(
          (map['loggingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
