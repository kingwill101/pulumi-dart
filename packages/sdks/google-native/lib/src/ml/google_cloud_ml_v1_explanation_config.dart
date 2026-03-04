// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_integrated_gradients_attribution.dart';
import 'google_cloud_ml_v1_sampled_shapley_attribution.dart';
import 'google_cloud_ml_v1_xrai_attribution.dart';

/// Message holding configuration options for explaining model predictions. There are three feature attribution methods supported for TensorFlow models: integrated gradients, sampled Shapley, and XRAI. [Learn more about feature attributions.](/ai-platform/prediction/docs/ai-explanations/overview)
class GoogleCloudMlV1ExplanationConfig {
  /// Attributes credit by computing the Aumann-Shapley value taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  final pulumi.Input<GoogleCloudMlV1IntegratedGradientsAttribution>?
  integratedGradientsAttribution;

  /// An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.
  final pulumi.Input<GoogleCloudMlV1SampledShapleyAttribution>?
  sampledShapleyAttribution;

  /// Attributes credit by computing the XRAI taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Currently only implemented for models with natural image inputs.
  final pulumi.Input<GoogleCloudMlV1XraiAttribution>? xraiAttribution;

  /// Creates a new [GoogleCloudMlV1ExplanationConfig].
  /// [integratedGradientsAttribution] Attributes credit by computing the Aumann-Shapley value taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  /// [sampledShapleyAttribution] An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.
  /// [xraiAttribution] Attributes credit by computing the XRAI taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Currently only implemented for models with natural image inputs.
  GoogleCloudMlV1ExplanationConfig({
    this.integratedGradientsAttribution,
    this.sampledShapleyAttribution,
    this.xraiAttribution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integratedGradientsAttribution':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudMlV1IntegratedGradientsAttribution,
            Map<String, dynamic>
          >(integratedGradientsAttribution, (value) => value.toMap()),
      'sampledShapleyAttribution':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudMlV1SampledShapleyAttribution,
            Map<String, dynamic>
          >(sampledShapleyAttribution, (value) => value.toMap()),
      'xraiAttribution':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudMlV1XraiAttribution,
            Map<String, dynamic>
          >(xraiAttribution, (value) => value.toMap()),
    };
  }

  factory GoogleCloudMlV1ExplanationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1ExplanationConfig(
      integratedGradientsAttribution: (() {
        final guardedValue = map['integratedGradientsAttribution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudMlV1IntegratedGradientsAttribution.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sampledShapleyAttribution: (() {
        final guardedValue = map['sampledShapleyAttribution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudMlV1SampledShapleyAttribution.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      xraiAttribution: (() {
        final guardedValue = map['xraiAttribution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudMlV1XraiAttribution.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
