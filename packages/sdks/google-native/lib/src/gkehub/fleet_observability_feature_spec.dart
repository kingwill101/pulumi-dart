// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_logging_config.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpec {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final pulumi.Input<FleetObservabilityLoggingConfig>? loggingConfig;

  /// Creates a new [FleetObservabilityFeatureSpec].
  /// [loggingConfig] Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  FleetObservabilityFeatureSpec({
    this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<FleetObservabilityLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityFeatureSpec.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFeatureSpec(
      loggingConfig: map['loggingConfig'] == null ? null : (FleetObservabilityLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

