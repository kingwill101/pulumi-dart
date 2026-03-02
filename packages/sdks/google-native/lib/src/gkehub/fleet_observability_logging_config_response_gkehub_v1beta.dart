// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_routing_config_response_gkehub_v1beta.dart';

/// LoggingConfig defines the configuration for different types of logs.
class FleetObservabilityLoggingConfigResponseGkehubV1beta {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final pulumi.Input<FleetObservabilityRoutingConfigResponseGkehubV1beta> defaultConfig;
  /// Specified if applying the routing config to all logs for all fleet scopes.
  final pulumi.Input<FleetObservabilityRoutingConfigResponseGkehubV1beta> fleetScopeLogsConfig;

  /// Creates a new [FleetObservabilityLoggingConfigResponseGkehubV1beta].
  /// [defaultConfig] Specified if applying the default routing config to logs not specified in other configs.
  /// [fleetScopeLogsConfig] Specified if applying the routing config to all logs for all fleet scopes.
  FleetObservabilityLoggingConfigResponseGkehubV1beta({
    required this.defaultConfig,
    required this.fleetScopeLogsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConfig': pulumi.Input.mapInputValue<FleetObservabilityRoutingConfigResponseGkehubV1beta, Map<String, dynamic>>(defaultConfig, (value) => value.toMap()),
      'fleetScopeLogsConfig': pulumi.Input.mapInputValue<FleetObservabilityRoutingConfigResponseGkehubV1beta, Map<String, dynamic>>(fleetScopeLogsConfig, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityLoggingConfigResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityLoggingConfigResponseGkehubV1beta(
      defaultConfig: (FleetObservabilityRoutingConfigResponseGkehubV1beta.fromMap((map['defaultConfig'] as Map).cast<String, dynamic>())).input(),
      fleetScopeLogsConfig: (FleetObservabilityRoutingConfigResponseGkehubV1beta.fromMap((map['fleetScopeLogsConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

