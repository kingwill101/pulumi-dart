// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_routing_config_response_gkehub_v1alpha.dart';

/// LoggingConfig defines the configuration for different types of logs.
class FleetObservabilityLoggingConfigResponseGkehubV1alpha {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final pulumi.Input<FleetObservabilityRoutingConfigResponseGkehubV1alpha> defaultConfig;
  /// Specified if applying the routing config to all logs for all fleet scopes.
  final pulumi.Input<FleetObservabilityRoutingConfigResponseGkehubV1alpha> fleetScopeLogsConfig;

  /// Creates a new [FleetObservabilityLoggingConfigResponseGkehubV1alpha].
  /// [defaultConfig] Specified if applying the default routing config to logs not specified in other configs.
  /// [fleetScopeLogsConfig] Specified if applying the routing config to all logs for all fleet scopes.
  const FleetObservabilityLoggingConfigResponseGkehubV1alpha({
    required this.defaultConfig,
    required this.fleetScopeLogsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConfig': pulumi.Input.mapInputValue<FleetObservabilityRoutingConfigResponseGkehubV1alpha, Map<String, dynamic>>(defaultConfig, (value) => value.toMap()),
      'fleetScopeLogsConfig': pulumi.Input.mapInputValue<FleetObservabilityRoutingConfigResponseGkehubV1alpha, Map<String, dynamic>>(fleetScopeLogsConfig, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityLoggingConfigResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityLoggingConfigResponseGkehubV1alpha(
      defaultConfig: pulumi.Input.fromValue(FleetObservabilityRoutingConfigResponseGkehubV1alpha.fromMap((map['defaultConfig']! as Map).cast<String, dynamic>())),
      fleetScopeLogsConfig: pulumi.Input.fromValue(FleetObservabilityRoutingConfigResponseGkehubV1alpha.fromMap((map['fleetScopeLogsConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

