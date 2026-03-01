// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of logging on a health check. If logging is enabled, logs will be exported to Stackdriver.
class HealthCheckLogConfigResponseComputeV1 {
  /// Indicates whether or not to export logs. This is false by default, which means no health check logging will be done.
  final bool enable;

  /// Creates a new [HealthCheckLogConfigResponseComputeV1].
  /// [enable] Indicates whether or not to export logs. This is false by default, which means no health check logging will be done.
  HealthCheckLogConfigResponseComputeV1({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
    };
  }

  factory HealthCheckLogConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return HealthCheckLogConfigResponseComputeV1(
      enable: map['enable'] as bool,
    );
  }
}

