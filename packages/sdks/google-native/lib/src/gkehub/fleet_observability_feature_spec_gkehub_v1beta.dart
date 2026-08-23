// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_logging_config_gkehub_v1beta.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpecGkehubV1beta {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final pulumi.Input<FleetObservabilityLoggingConfigGkehubV1beta>? loggingConfig;

  /// Creates a new [FleetObservabilityFeatureSpecGkehubV1beta].
  /// [loggingConfig] Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  const FleetObservabilityFeatureSpecGkehubV1beta({
    this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<FleetObservabilityLoggingConfigGkehubV1beta, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFeatureSpecGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFeatureSpecGkehubV1beta(
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetObservabilityLoggingConfigGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
