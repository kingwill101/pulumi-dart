// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_spec_fleetobservability_logging_config_default_config.dart';
import 'get_feature_spec_fleetobservability_logging_config_fleet_scope_logs_config.dart';

class GetFeatureSpecFleetobservabilityLoggingConfig {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final pulumi.Input<List<GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig>> defaultConfigs;
  /// Specified if applying the routing config to all logs for all fleet scopes.
  final pulumi.Input<List<GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig>> fleetScopeLogsConfigs;

  /// Creates a new [GetFeatureSpecFleetobservabilityLoggingConfig].
  /// [defaultConfigs] Specified if applying the default routing config to logs not specified in other configs.
  /// [fleetScopeLogsConfigs] Specified if applying the routing config to all logs for all fleet scopes.
  const GetFeatureSpecFleetobservabilityLoggingConfig({
    required this.defaultConfigs,
    required this.fleetScopeLogsConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConfigs': pulumi.Input.mapInputValue<List<GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig>, List<Map<String, dynamic>>>(defaultConfigs, (value) => pulumi.Input.encodeList<GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fleetScopeLogsConfigs': pulumi.Input.mapInputValue<List<GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig>, List<Map<String, dynamic>>>(fleetScopeLogsConfigs, (value) => pulumi.Input.encodeList<GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFeatureSpecFleetobservabilityLoggingConfig.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpecFleetobservabilityLoggingConfig(
      defaultConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig>(map['defaultConfigs']!, (value) => GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig.fromMap((value as Map).cast<String, dynamic>()))),
      fleetScopeLogsConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig>(map['fleetScopeLogsConfigs']!, (value) => GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
