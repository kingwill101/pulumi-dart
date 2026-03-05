// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec {
  /// (Output)
  /// The resource metric name. Supported metrics: * For Online Prediction: * `aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle` * `aiplatform.googleapis.com/prediction/online/cpu/utilization`
  final pulumi.Input<String>? metricName;
  /// (Output)
  /// The target resource utilization in percentage (1% - 100%) for the given metric; once the real usage deviates from the target by a certain percentage, the machine replicas change. The default value is 60 (representing 60%) if not provided.
  final pulumi.Input<int>? target;

  /// Creates a new [AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec].
  /// [metricName] (Output)
  /// [target] (Output)
  AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec({
    this.metricName,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': ?metricName,
      'target': ?target,
    };
  }

  factory AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec.fromMap(Map<String, dynamic> map) {
    return AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec(
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

