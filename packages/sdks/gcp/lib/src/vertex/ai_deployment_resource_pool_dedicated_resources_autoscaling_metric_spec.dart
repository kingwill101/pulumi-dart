// ignore_for_file: unused_element, unnecessary_cast


class AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec {
  /// The resource metric name. Supported metrics: For Online Prediction: * `aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle` * `aiplatform.googleapis.com/prediction/online/cpu/utilization`
  final String metricName;
  /// The target resource utilization in percentage (1% - 100%) for the given metric; once the real usage deviates from the target by a certain percentage, the machine replicas change. The default value is 60 (representing 60%) if not provided.
  final int? target;

  /// Creates a new [AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec].
  /// [metricName] The resource metric name. Supported metrics: For Online Prediction: * `aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle` * `aiplatform.googleapis.com/prediction/online/cpu/utilization`
  /// [target] The target resource utilization in percentage (1% - 100%) for the given metric; once the real usage deviates from the target by a certain percentage, the machine replicas change. The default value is 60 (representing 60%) if not provided.
  AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec({
    required this.metricName,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'target': ?target,
    };
  }

  factory AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec.fromMap(Map<String, dynamic> map) {
    return AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec(
      metricName: map['metricName'] as String,
      target: map['target'] == null ? null : map['target'] as int,
    );
  }
}

