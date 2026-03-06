// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_service_autoscaling_metrics_cpu.dart';

class GetAppSpecServiceAutoscalingMetrics {
  /// Settings for scaling the component based on CPU utilization.
  final pulumi.Input<GetAppSpecServiceAutoscalingMetricsCpu>? cpu;

  /// Creates a new [GetAppSpecServiceAutoscalingMetrics].
  /// [cpu] Settings for scaling the component based on CPU utilization.
  const GetAppSpecServiceAutoscalingMetrics({
    this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?pulumi.Input.mapOptionalInputValue<GetAppSpecServiceAutoscalingMetricsCpu, Map<String, dynamic>>(cpu, (value) => value.toMap()),
    };
  }

  factory GetAppSpecServiceAutoscalingMetrics.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceAutoscalingMetrics(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecServiceAutoscalingMetricsCpu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

