// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_spec_fleetobservability_logging_config_default_config.dart';
import 'feature_spec_fleetobservability_logging_config_fleet_scope_logs_config.dart';

class FeatureSpecFleetobservabilityLoggingConfig {
  /// Specified if applying the default routing config to logs not specified in other configs.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpecFleetobservabilityLoggingConfigDefaultConfig>?
  defaultConfig;

  /// Specified if applying the routing config to all logs for all fleet scopes.
  /// Structure is documented below.
  final pulumi.Input<
    FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig
  >?
  fleetScopeLogsConfig;

  /// Creates a new [FeatureSpecFleetobservabilityLoggingConfig].
  /// [defaultConfig] Specified if applying the default routing config to logs not specified in other configs.
  /// [fleetScopeLogsConfig] Specified if applying the routing config to all logs for all fleet scopes.
  FeatureSpecFleetobservabilityLoggingConfig({
    this.defaultConfig,
    this.fleetScopeLogsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FeatureSpecFleetobservabilityLoggingConfigDefaultConfig,
            Map<String, dynamic>
          >(defaultConfig, (value) => value.toMap()),
      'fleetScopeLogsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig,
            Map<String, dynamic>
          >(fleetScopeLogsConfig, (value) => value.toMap()),
    };
  }

  factory FeatureSpecFleetobservabilityLoggingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureSpecFleetobservabilityLoggingConfig(
      defaultConfig: (() {
        final guardedValue = map['defaultConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FeatureSpecFleetobservabilityLoggingConfigDefaultConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fleetScopeLogsConfig: (() {
        final guardedValue = map['fleetScopeLogsConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
