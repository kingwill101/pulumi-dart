// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of logging on a health check. If logging is enabled, logs will be exported to Stackdriver.
class HealthCheckLogConfig {
  /// Indicates whether or not to export logs. This is false by default, which means no health check logging will be done.
  final pulumi.Input<bool>? enable;

  /// Creates a new [HealthCheckLogConfig].
  /// [enable] Indicates whether or not to export logs. This is false by default, which means no health check logging will be done.
  HealthCheckLogConfig({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory HealthCheckLogConfig.fromMap(Map<String, dynamic> map) {
    return HealthCheckLogConfig(
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
    );
  }
}

