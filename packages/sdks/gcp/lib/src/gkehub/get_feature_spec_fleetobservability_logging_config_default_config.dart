// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig {
  /// Specified if fleet logging feature is enabled. Possible values: ["MODE_UNSPECIFIED", "COPY", "MOVE"]
  final pulumi.Input<String> mode;

  /// Creates a new [GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig].
  /// [mode] Specified if fleet logging feature is enabled. Possible values: ["MODE_UNSPECIFIED", "COPY", "MOVE"]
  GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode};
  }

  factory GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
