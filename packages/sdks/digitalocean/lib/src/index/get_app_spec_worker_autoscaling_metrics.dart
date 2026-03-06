// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_worker_autoscaling_metrics_cpu.dart';

class GetAppSpecWorkerAutoscalingMetrics {
  /// Settings for scaling the component based on CPU utilization.
  final pulumi.Input<GetAppSpecWorkerAutoscalingMetricsCpu>? cpu;

  /// Creates a new [GetAppSpecWorkerAutoscalingMetrics].
  /// [cpu] Settings for scaling the component based on CPU utilization.
  const GetAppSpecWorkerAutoscalingMetrics({
    this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?pulumi.Input.mapOptionalInputValue<GetAppSpecWorkerAutoscalingMetricsCpu, Map<String, dynamic>>(cpu, (value) => value.toMap()),
    };
  }

  factory GetAppSpecWorkerAutoscalingMetrics.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerAutoscalingMetrics(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecWorkerAutoscalingMetricsCpu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

