// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_routing_config_response.dart';

/// LoggingConfig defines the configuration for different types of logs.
class FleetObservabilityLoggingConfigResponse {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final pulumi.Input<FleetObservabilityRoutingConfigResponse> defaultConfig;
  /// Specified if applying the routing config to all logs for all fleet scopes.
  final pulumi.Input<FleetObservabilityRoutingConfigResponse> fleetScopeLogsConfig;

  /// Creates a new [FleetObservabilityLoggingConfigResponse].
  /// [defaultConfig] Specified if applying the default routing config to logs not specified in other configs.
  /// [fleetScopeLogsConfig] Specified if applying the routing config to all logs for all fleet scopes.
  const FleetObservabilityLoggingConfigResponse({
    required this.defaultConfig,
    required this.fleetScopeLogsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConfig': pulumi.Input.mapInputValue<FleetObservabilityRoutingConfigResponse, Map<String, dynamic>>(defaultConfig, (value) => value.toMap()),
      'fleetScopeLogsConfig': pulumi.Input.mapInputValue<FleetObservabilityRoutingConfigResponse, Map<String, dynamic>>(fleetScopeLogsConfig, (value) => value.toMap()),
    };
  }

  factory FleetObservabilityLoggingConfigResponse.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityLoggingConfigResponse(
      defaultConfig: pulumi.Input.fromValue(FleetObservabilityRoutingConfigResponse.fromMap((map['defaultConfig']! as Map).cast<String, dynamic>())),
      fleetScopeLogsConfig: pulumi.Input.fromValue(FleetObservabilityRoutingConfigResponse.fromMap((map['fleetScopeLogsConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

