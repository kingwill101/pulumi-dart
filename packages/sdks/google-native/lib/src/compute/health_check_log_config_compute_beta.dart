// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of logging on a health check. If logging is enabled, logs will be exported to Stackdriver.
class HealthCheckLogConfigComputeBeta {
  /// Indicates whether or not to export logs. This is false by default, which means no health check logging will be done.
  final bool? enable;

  /// Creates a new [HealthCheckLogConfigComputeBeta].
  /// [enable] Indicates whether or not to export logs. This is false by default, which means no health check logging will be done.
  HealthCheckLogConfigComputeBeta({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory HealthCheckLogConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return HealthCheckLogConfigComputeBeta(
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}

