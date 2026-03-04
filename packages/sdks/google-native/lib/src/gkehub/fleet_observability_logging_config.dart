// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_routing_config.dart';

/// LoggingConfig defines the configuration for different types of logs.
class FleetObservabilityLoggingConfig {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final pulumi.Input<FleetObservabilityRoutingConfig>? defaultConfig;

  /// Specified if applying the routing config to all logs for all fleet scopes.
  final pulumi.Input<FleetObservabilityRoutingConfig>? fleetScopeLogsConfig;

  /// Creates a new [FleetObservabilityLoggingConfig].
  /// [defaultConfig] Specified if applying the default routing config to logs not specified in other configs.
  /// [fleetScopeLogsConfig] Specified if applying the routing config to all logs for all fleet scopes.
  FleetObservabilityLoggingConfig({
    this.defaultConfig,
    this.fleetScopeLogsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FleetObservabilityRoutingConfig,
            Map<String, dynamic>
          >(defaultConfig, (value) => value.toMap()),
      'fleetScopeLogsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FleetObservabilityRoutingConfig,
            Map<String, dynamic>
          >(fleetScopeLogsConfig, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityLoggingConfig.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityLoggingConfig(
      defaultConfig: (() {
        final guardedValue = map['defaultConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FleetObservabilityRoutingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fleetScopeLogsConfig: (() {
        final guardedValue = map['fleetScopeLogsConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FleetObservabilityRoutingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
