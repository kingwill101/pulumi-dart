// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec {
  /// The resource metric name.
  /// Supported metrics:
  /// * For Online Prediction:
  /// * `aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle`
  /// * `aiplatform.googleapis.com/prediction/online/cpu/utilization`
  final pulumi.Input<String> metricName;
  /// The target resource utilization in percentage (1% - 100%) for the given
  /// metric; once the real usage deviates from the target by a certain
  /// percentage, the machine replicas change. The default value is 60
  /// (representing 60%) if not provided.
  final pulumi.Input<int>? target;

  /// Creates a new [AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec].
  /// [metricName] The resource metric name.
  /// [target] The target resource utilization in percentage (1% - 100%) for the given
  const AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec({
    required this.metricName,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'target': ?target,
    };
  }

  factory AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

