// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The metric specification that defines the target resource utilization (CPU utilization, accelerator's duty cycle, and so on) for calculating the desired replica count.
class GoogleCloudAiplatformV1beta1AutoscalingMetricSpec {
  /// The resource metric name. Supported metrics: * For Online Prediction: * `aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle` * `aiplatform.googleapis.com/prediction/online/cpu/utilization`
  final pulumi.Input<String> metricName;
  /// The target resource utilization in percentage (1% - 100%) for the given metric; once the real usage deviates from the target by a certain percentage, the machine replicas change. The default value is 60 (representing 60%) if not provided.
  final pulumi.Input<int>? target;

  /// Creates a new [GoogleCloudAiplatformV1beta1AutoscalingMetricSpec].
  /// [metricName] The resource metric name. Supported metrics: * For Online Prediction: * `aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle` * `aiplatform.googleapis.com/prediction/online/cpu/utilization`
  /// [target] The target resource utilization in percentage (1% - 100%) for the given metric; once the real usage deviates from the target by a certain percentage, the machine replicas change. The default value is 60 (representing 60%) if not provided.
  GoogleCloudAiplatformV1beta1AutoscalingMetricSpec({
    required this.metricName,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'target': ?target,
    };
  }

  factory GoogleCloudAiplatformV1beta1AutoscalingMetricSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1AutoscalingMetricSpec(
      metricName: (map['metricName'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as int).input(),
    );
  }
}

