// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_worker_autoscaling_metrics_cpu.dart';

class AppSpecWorkerAutoscalingMetrics {
  /// Settings for scaling the component based on CPU utilization.
  final pulumi.Input<AppSpecWorkerAutoscalingMetricsCpu>? cpu;

  /// Creates a new [AppSpecWorkerAutoscalingMetrics].
  /// [cpu] Settings for scaling the component based on CPU utilization.
  AppSpecWorkerAutoscalingMetrics({
    this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?pulumi.Input.mapOptionalInputValue<AppSpecWorkerAutoscalingMetricsCpu, Map<String, dynamic>>(cpu, (value) => value.toMap()),
    };
  }

  factory AppSpecWorkerAutoscalingMetrics.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerAutoscalingMetrics(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecWorkerAutoscalingMetricsCpu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

