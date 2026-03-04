// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_integrated_gradients_attribution_response.dart';
import 'google_cloud_ml_v1_sampled_shapley_attribution_response.dart';
import 'google_cloud_ml_v1_xrai_attribution_response.dart';

/// Message holding configuration options for explaining model predictions. There are three feature attribution methods supported for TensorFlow models: integrated gradients, sampled Shapley, and XRAI. [Learn more about feature attributions.](/ai-platform/prediction/docs/ai-explanations/overview)
class GoogleCloudMlV1ExplanationConfigResponse {
  /// Attributes credit by computing the Aumann-Shapley value taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  final pulumi.Input<GoogleCloudMlV1IntegratedGradientsAttributionResponse>
  integratedGradientsAttribution;

  /// An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.
  final pulumi.Input<GoogleCloudMlV1SampledShapleyAttributionResponse>
  sampledShapleyAttribution;

  /// Attributes credit by computing the XRAI taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Currently only implemented for models with natural image inputs.
  final pulumi.Input<GoogleCloudMlV1XraiAttributionResponse> xraiAttribution;

  /// Creates a new [GoogleCloudMlV1ExplanationConfigResponse].
  /// [integratedGradientsAttribution] Attributes credit by computing the Aumann-Shapley value taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  /// [sampledShapleyAttribution] An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.
  /// [xraiAttribution] Attributes credit by computing the XRAI taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Currently only implemented for models with natural image inputs.
  GoogleCloudMlV1ExplanationConfigResponse({
    required this.integratedGradientsAttribution,
    required this.sampledShapleyAttribution,
    required this.xraiAttribution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integratedGradientsAttribution':
          pulumi.Input.mapInputValue<
            GoogleCloudMlV1IntegratedGradientsAttributionResponse,
            Map<String, dynamic>
          >(integratedGradientsAttribution, (value) => value.toMap()),
      'sampledShapleyAttribution':
          pulumi.Input.mapInputValue<
            GoogleCloudMlV1SampledShapleyAttributionResponse,
            Map<String, dynamic>
          >(sampledShapleyAttribution, (value) => value.toMap()),
      'xraiAttribution':
          pulumi.Input.mapInputValue<
            GoogleCloudMlV1XraiAttributionResponse,
            Map<String, dynamic>
          >(xraiAttribution, (value) => value.toMap()),
    };
  }

  factory GoogleCloudMlV1ExplanationConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1ExplanationConfigResponse(
      integratedGradientsAttribution: pulumi.Input.fromValue(
        GoogleCloudMlV1IntegratedGradientsAttributionResponse.fromMap(
          (map['integratedGradientsAttribution']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      sampledShapleyAttribution: pulumi.Input.fromValue(
        GoogleCloudMlV1SampledShapleyAttributionResponse.fromMap(
          (map['sampledShapleyAttribution']! as Map).cast<String, dynamic>(),
        ),
      ),
      xraiAttribution: pulumi.Input.fromValue(
        GoogleCloudMlV1XraiAttributionResponse.fromMap(
          (map['xraiAttribution']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
