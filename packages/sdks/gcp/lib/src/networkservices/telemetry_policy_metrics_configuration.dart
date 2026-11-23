// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryPolicyMetricsConfiguration {
  /// Indicates whether metrics are enabled or disabled. Set to true to explicitly enable, or false to explicitly disable.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [TelemetryPolicyMetricsConfiguration].
  /// [enabled] Indicates whether metrics are enabled or disabled. Set to true to explicitly enable, or false to explicitly disable.
  const TelemetryPolicyMetricsConfiguration({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory TelemetryPolicyMetricsConfiguration.fromMap(Map<String, dynamic> map) {
    return TelemetryPolicyMetricsConfiguration(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
