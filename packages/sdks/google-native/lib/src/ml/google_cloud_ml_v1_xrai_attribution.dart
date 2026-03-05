// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Attributes credit by computing the XRAI taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Currently only implemented for models with natural image inputs.
class GoogleCloudMlV1XraiAttribution {
  /// Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.
  final pulumi.Input<int>? numIntegralSteps;

  /// Creates a new [GoogleCloudMlV1XraiAttribution].
  /// [numIntegralSteps] Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.
  GoogleCloudMlV1XraiAttribution({
    this.numIntegralSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numIntegralSteps': ?numIntegralSteps,
    };
  }

  factory GoogleCloudMlV1XraiAttribution.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1XraiAttribution(
      numIntegralSteps: (() { final guardedValue = map['numIntegralSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

