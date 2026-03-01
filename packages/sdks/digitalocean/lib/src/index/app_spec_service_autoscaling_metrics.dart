// ignore_for_file: unused_element, unnecessary_cast

import 'app_spec_service_autoscaling_metrics_cpu.dart';

class AppSpecServiceAutoscalingMetrics {
  /// Settings for scaling the component based on CPU utilization.
  final AppSpecServiceAutoscalingMetricsCpu? cpu;

  /// Creates a new [AppSpecServiceAutoscalingMetrics].
  /// [cpu] Settings for scaling the component based on CPU utilization.
  AppSpecServiceAutoscalingMetrics({
    this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu == null ? null : cpu!.toMap(),
    };
  }

  factory AppSpecServiceAutoscalingMetrics.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceAutoscalingMetrics(
      cpu: map['cpu'] == null ? null : AppSpecServiceAutoscalingMetricsCpu.fromMap((map['cpu'] as Map).cast<String, dynamic>()),
    );
  }
}

