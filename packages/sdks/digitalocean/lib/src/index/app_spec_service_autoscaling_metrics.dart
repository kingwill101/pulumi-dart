// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_service_autoscaling_metrics_cpu.dart';

class AppSpecServiceAutoscalingMetrics {
  /// Settings for scaling the component based on CPU utilization.
  final pulumi.Input<AppSpecServiceAutoscalingMetricsCpu>? cpu;

  /// Creates a new [AppSpecServiceAutoscalingMetrics].
  /// [cpu] Settings for scaling the component based on CPU utilization.
  const AppSpecServiceAutoscalingMetrics({
    this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?pulumi.Input.mapOptionalInputValue<AppSpecServiceAutoscalingMetricsCpu, Map<String, dynamic>>(cpu, (value) => value.toMap()),
    };
  }

  factory AppSpecServiceAutoscalingMetrics.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceAutoscalingMetrics(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecServiceAutoscalingMetricsCpu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
