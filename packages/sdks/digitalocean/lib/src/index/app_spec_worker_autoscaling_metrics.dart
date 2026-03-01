// ignore_for_file: unused_element, unnecessary_cast

import 'app_spec_worker_autoscaling_metrics_cpu.dart';

class AppSpecWorkerAutoscalingMetrics {
  /// Settings for scaling the component based on CPU utilization.
  final AppSpecWorkerAutoscalingMetricsCpu? cpu;

  /// Creates a new [AppSpecWorkerAutoscalingMetrics].
  /// [cpu] Settings for scaling the component based on CPU utilization.
  AppSpecWorkerAutoscalingMetrics({
    this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu == null ? null : cpu!.toMap(),
    };
  }

  factory AppSpecWorkerAutoscalingMetrics.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerAutoscalingMetrics(
      cpu: map['cpu'] == null ? null : AppSpecWorkerAutoscalingMetricsCpu.fromMap((map['cpu'] as Map).cast<String, dynamic>()),
    );
  }
}

