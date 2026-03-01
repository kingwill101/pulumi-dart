// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_spec_worker_autoscaling_metrics.dart';

class GetAppSpecWorkerAutoscaling {
  /// The maximum amount of instances for this component. Must be more than min_instance_count.
  final int maxInstanceCount;
  /// The metrics that the component is scaled on.
  final GetAppSpecWorkerAutoscalingMetrics metrics;
  /// The minimum amount of instances for this component. Must be less than max_instance_count.
  final int minInstanceCount;

  /// Creates a new [GetAppSpecWorkerAutoscaling].
  /// [maxInstanceCount] The maximum amount of instances for this component. Must be more than min_instance_count.
  /// [metrics] The metrics that the component is scaled on.
  /// [minInstanceCount] The minimum amount of instances for this component. Must be less than max_instance_count.
  GetAppSpecWorkerAutoscaling({
    required this.maxInstanceCount,
    required this.metrics,
    required this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': maxInstanceCount,
      'metrics': metrics.toMap(),
      'minInstanceCount': minInstanceCount,
    };
  }

  factory GetAppSpecWorkerAutoscaling.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerAutoscaling(
      maxInstanceCount: map['maxInstanceCount'] as int,
      metrics: GetAppSpecWorkerAutoscalingMetrics.fromMap((map['metrics'] as Map).cast<String, dynamic>()),
      minInstanceCount: map['minInstanceCount'] as int,
    );
  }
}

