// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureSpecFleetobservabilityLoggingConfigDefaultConfig {
  /// Specified if fleet logging feature is enabled.
  /// Possible values are: `MODE_UNSPECIFIED`, `COPY`, `MOVE`.
  final pulumi.Input<String>? mode;

  /// Creates a new [FeatureSpecFleetobservabilityLoggingConfigDefaultConfig].
  /// [mode] Specified if fleet logging feature is enabled.
  FeatureSpecFleetobservabilityLoggingConfigDefaultConfig({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory FeatureSpecFleetobservabilityLoggingConfigDefaultConfig.fromMap(Map<String, dynamic> map) {
    return FeatureSpecFleetobservabilityLoggingConfigDefaultConfig(
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
    );
  }
}

