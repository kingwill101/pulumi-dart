// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_service_autoscaling_metrics.dart';

class GetAppSpecServiceAutoscaling {
  /// The maximum amount of instances for this component. Must be more than min_instance_count.
  final pulumi.Input<int> maxInstanceCount;
  /// The metrics that the component is scaled on.
  final pulumi.Input<GetAppSpecServiceAutoscalingMetrics> metrics;
  /// The minimum amount of instances for this component. Must be less than max_instance_count.
  final pulumi.Input<int> minInstanceCount;

  /// Creates a new [GetAppSpecServiceAutoscaling].
  /// [maxInstanceCount] The maximum amount of instances for this component. Must be more than min_instance_count.
  /// [metrics] The metrics that the component is scaled on.
  /// [minInstanceCount] The minimum amount of instances for this component. Must be less than max_instance_count.
  GetAppSpecServiceAutoscaling({
    required this.maxInstanceCount,
    required this.metrics,
    required this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': maxInstanceCount,
      'metrics': pulumi.Input.mapInputValue<GetAppSpecServiceAutoscalingMetrics, Map<String, dynamic>>(metrics, (value) => value.toMap()),
      'minInstanceCount': minInstanceCount,
    };
  }

  factory GetAppSpecServiceAutoscaling.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceAutoscaling(
      maxInstanceCount: pulumi.Input.fromValue(map['maxInstanceCount'] as int),
      metrics: pulumi.Input.fromValue(GetAppSpecServiceAutoscalingMetrics.fromMap((map['metrics']! as Map).cast<String, dynamic>())),
      minInstanceCount: pulumi.Input.fromValue(map['minInstanceCount'] as int),
    );
  }
}

