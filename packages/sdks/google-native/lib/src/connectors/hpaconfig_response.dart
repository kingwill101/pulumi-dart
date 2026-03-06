// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Autoscaling config for connector deployment system metrics.
class HPAConfigResponse {
  /// Percent CPU utilization where HPA triggers autoscaling.
  final pulumi.Input<String> cpuUtilizationThreshold;
  /// Percent Memory utilization where HPA triggers autoscaling.
  final pulumi.Input<String> memoryUtilizationThreshold;

  /// Creates a new [HPAConfigResponse].
  /// [cpuUtilizationThreshold] Percent CPU utilization where HPA triggers autoscaling.
  /// [memoryUtilizationThreshold] Percent Memory utilization where HPA triggers autoscaling.
  const HPAConfigResponse({
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
      cpuUtilizationThreshold: pulumi.Input.fromValue(map['cpuUtilizationThreshold'] as String),
      memoryUtilizationThreshold: pulumi.Input.fromValue(map['memoryUtilizationThreshold'] as String),
    );
  }
}

