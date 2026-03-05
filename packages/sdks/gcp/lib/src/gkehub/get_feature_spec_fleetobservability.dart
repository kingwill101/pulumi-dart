// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_spec_fleetobservability_logging_config.dart';

class GetFeatureSpecFleetobservability {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final pulumi.Input<List<GetFeatureSpecFleetobservabilityLoggingConfig>> loggingConfigs;

  /// Creates a new [GetFeatureSpecFleetobservability].
  /// [loggingConfigs] Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  GetFeatureSpecFleetobservability({
    required this.loggingConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfigs': pulumi.Input.mapInputValue<List<GetFeatureSpecFleetobservabilityLoggingConfig>, List<Map<String, dynamic>>>(loggingConfigs, (value) => pulumi.Input.encodeList<GetFeatureSpecFleetobservabilityLoggingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFeatureSpecFleetobservability.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpecFleetobservability(
      loggingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureSpecFleetobservabilityLoggingConfig>(map['loggingConfigs']!, (value) => GetFeatureSpecFleetobservabilityLoggingConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

