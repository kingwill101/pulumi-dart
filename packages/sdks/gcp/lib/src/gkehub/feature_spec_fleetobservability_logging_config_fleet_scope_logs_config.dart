// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig {
  /// Specified if fleet logging feature is enabled.
  /// Possible values are: `MODE_UNSPECIFIED`, `COPY`, `MOVE`.
  final pulumi.Input<String>? mode;

  /// Creates a new [FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig].
  /// [mode] Specified if fleet logging feature is enabled.
  const FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig.fromMap(Map<String, dynamic> map) {
    return FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
