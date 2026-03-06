// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Attributes credit by computing the Aumann-Shapley value taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
class GoogleCloudMlV1IntegratedGradientsAttribution {
  /// Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.
  final pulumi.Input<int>? numIntegralSteps;

  /// Creates a new [GoogleCloudMlV1IntegratedGradientsAttribution].
  /// [numIntegralSteps] Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.
  const GoogleCloudMlV1IntegratedGradientsAttribution({
    this.numIntegralSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numIntegralSteps': ?numIntegralSteps,
    };
  }

  factory GoogleCloudMlV1IntegratedGradientsAttribution.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1IntegratedGradientsAttribution(
      numIntegralSteps: (() { final guardedValue = map['numIntegralSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

