// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_logging_config_gkehub_v1alpha.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpecGkehubV1alpha {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final pulumi.Input<FleetObservabilityLoggingConfigGkehubV1alpha>? loggingConfig;

  /// Creates a new [FleetObservabilityFeatureSpecGkehubV1alpha].
  /// [loggingConfig] Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  const FleetObservabilityFeatureSpecGkehubV1alpha({
    this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<FleetObservabilityLoggingConfigGkehubV1alpha, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFeatureSpecGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFeatureSpecGkehubV1alpha(
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetObservabilityLoggingConfigGkehubV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
