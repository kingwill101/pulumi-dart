// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig {
  /// Specified if fleet logging feature is enabled. Possible values: ["MODE_UNSPECIFIED", "COPY", "MOVE"]
  final pulumi.Input<String> mode;

  /// Creates a new [GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig].
  /// [mode] Specified if fleet logging feature is enabled. Possible values: ["MODE_UNSPECIFIED", "COPY", "MOVE"]
  const GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

