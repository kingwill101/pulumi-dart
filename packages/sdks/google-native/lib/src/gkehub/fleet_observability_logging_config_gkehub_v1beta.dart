// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_routing_config_gkehub_v1beta.dart';

/// LoggingConfig defines the configuration for different types of logs.
class FleetObservabilityLoggingConfigGkehubV1beta {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final pulumi.Input<FleetObservabilityRoutingConfigGkehubV1beta>? defaultConfig;
  /// Specified if applying the routing config to all logs for all fleet scopes.
  final pulumi.Input<FleetObservabilityRoutingConfigGkehubV1beta>? fleetScopeLogsConfig;

  /// Creates a new [FleetObservabilityLoggingConfigGkehubV1beta].
  /// [defaultConfig] Specified if applying the default routing config to logs not specified in other configs.
  /// [fleetScopeLogsConfig] Specified if applying the routing config to all logs for all fleet scopes.
  const FleetObservabilityLoggingConfigGkehubV1beta({
    this.defaultConfig,
    this.fleetScopeLogsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConfig': ?pulumi.Input.mapOptionalInputValue<FleetObservabilityRoutingConfigGkehubV1beta, Map<String, dynamic>>(defaultConfig, (value) => value.toMap()),
      'fleetScopeLogsConfig': ?pulumi.Input.mapOptionalInputValue<FleetObservabilityRoutingConfigGkehubV1beta, Map<String, dynamic>>(fleetScopeLogsConfig, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityLoggingConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityLoggingConfigGkehubV1beta(
      defaultConfig: (() { final guardedValue = map['defaultConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetObservabilityRoutingConfigGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fleetScopeLogsConfig: (() { final guardedValue = map['fleetScopeLogsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetObservabilityRoutingConfigGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

