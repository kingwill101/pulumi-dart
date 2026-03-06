// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_service_autoscaling_metrics.dart';

class AppSpecServiceAutoscaling {
  /// The maximum amount of instances for this component. Must be more than min_instance_count.
  final pulumi.Input<int> maxInstanceCount;
  /// The metrics that the component is scaled on.
  final pulumi.Input<AppSpecServiceAutoscalingMetrics> metrics;
  /// The minimum amount of instances for this component. Must be less than max_instance_count.
  final pulumi.Input<int> minInstanceCount;

  /// Creates a new [AppSpecServiceAutoscaling].
  /// [maxInstanceCount] The maximum amount of instances for this component. Must be more than min_instance_count.
  /// [metrics] The metrics that the component is scaled on.
  /// [minInstanceCount] The minimum amount of instances for this component. Must be less than max_instance_count.
  const AppSpecServiceAutoscaling({
    required this.maxInstanceCount,
    required this.metrics,
    required this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': maxInstanceCount,
      'metrics': pulumi.Input.mapInputValue<AppSpecServiceAutoscalingMetrics, Map<String, dynamic>>(metrics, (value) => value.toMap()),
      'minInstanceCount': minInstanceCount,
    };
  }

  factory AppSpecServiceAutoscaling.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceAutoscaling(
      maxInstanceCount: pulumi.Input.fromValue(map['maxInstanceCount'] as int),
      metrics: pulumi.Input.fromValue(AppSpecServiceAutoscalingMetrics.fromMap((map['metrics']! as Map).cast<String, dynamic>())),
      minInstanceCount: pulumi.Input.fromValue(map['minInstanceCount'] as int),
    );
  }
}

