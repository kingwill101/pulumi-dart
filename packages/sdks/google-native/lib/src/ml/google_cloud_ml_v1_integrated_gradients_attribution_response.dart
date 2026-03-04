// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Attributes credit by computing the Aumann-Shapley value taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
class GoogleCloudMlV1IntegratedGradientsAttributionResponse {
  /// Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.
  final pulumi.Input<int> numIntegralSteps;

  /// Creates a new [GoogleCloudMlV1IntegratedGradientsAttributionResponse].
  /// [numIntegralSteps] Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.
  GoogleCloudMlV1IntegratedGradientsAttributionResponse({
    required this.numIntegralSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'numIntegralSteps': numIntegralSteps};
  }

  factory GoogleCloudMlV1IntegratedGradientsAttributionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1IntegratedGradientsAttributionResponse(
      numIntegralSteps: pulumi.Input.fromValue(map['numIntegralSteps'] as int),
    );
  }
}
