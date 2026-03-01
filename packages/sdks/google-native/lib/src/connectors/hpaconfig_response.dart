// ignore_for_file: unused_element, unnecessary_cast


/// Autoscaling config for connector deployment system metrics.
class HPAConfigResponse {
  /// Percent CPU utilization where HPA triggers autoscaling.
  final String cpuUtilizationThreshold;
  /// Percent Memory utilization where HPA triggers autoscaling.
  final String memoryUtilizationThreshold;

  /// Creates a new [HPAConfigResponse].
  /// [cpuUtilizationThreshold] Percent CPU utilization where HPA triggers autoscaling.
  /// [memoryUtilizationThreshold] Percent Memory utilization where HPA triggers autoscaling.
  HPAConfigResponse({
    required this.cpuUtilizationThreshold,
    required this.memoryUtilizationThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuUtilizationThreshold': cpuUtilizationThreshold,
      'memoryUtilizationThreshold': memoryUtilizationThreshold,
    };
  }

  factory HPAConfigResponse.fromMap(Map<String, dynamic> map) {
    return HPAConfigResponse(
      cpuUtilizationThreshold: map['cpuUtilizationThreshold'] as String,
      memoryUtilizationThreshold: map['memoryUtilizationThreshold'] as String,
    );
  }
}

