// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_examples_response.dart';
import 'google_cloud_aiplatform_v1_integrated_gradients_attribution_response.dart';
import 'google_cloud_aiplatform_v1_sampled_shapley_attribution_response.dart';
import 'google_cloud_aiplatform_v1_xrai_attribution_response.dart';

/// Parameters to configure explaining for Model's predictions.
class GoogleCloudAiplatformV1ExplanationParametersResponse {
  /// Example-based explanations that returns the nearest neighbors from the provided dataset.
  final pulumi.Input<GoogleCloudAiplatformV1ExamplesResponse> examples;
  /// An attribution method that computes Aumann-Shapley values taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  final pulumi.Input<GoogleCloudAiplatformV1IntegratedGradientsAttributionResponse> integratedGradientsAttribution;
  /// If populated, only returns attributions that have output_index contained in output_indices. It must be an ndarray of integers, with the same shape of the output it's explaining. If not populated, returns attributions for top_k indices of outputs. If neither top_k nor output_indices is populated, returns the argmax index of the outputs. Only applicable to Models that predict multiple outputs (e,g, multi-class Models that predict multiple classes).
  final pulumi.Input<List<dynamic>> outputIndices;
  /// An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features. Refer to this paper for model details: https://arxiv.org/abs/1306.4265.
  final pulumi.Input<GoogleCloudAiplatformV1SampledShapleyAttributionResponse> sampledShapleyAttribution;
  /// If populated, returns attributions for top K indices of outputs (defaults to 1). Only applies to Models that predicts more than one outputs (e,g, multi-class Models). When set to -1, returns explanations for all outputs.
  final pulumi.Input<int> topK;
  /// An attribution method that redistributes Integrated Gradients attribution to segmented regions, taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 XRAI currently performs better on natural images, like a picture of a house or an animal. If the images are taken in artificial environments, like a lab or manufacturing line, or from diagnostic equipment, like x-rays or quality-control cameras, use Integrated Gradients instead.
  final pulumi.Input<GoogleCloudAiplatformV1XraiAttributionResponse> xraiAttribution;

  /// Creates a new [GoogleCloudAiplatformV1ExplanationParametersResponse].
  /// [examples] Example-based explanations that returns the nearest neighbors from the provided dataset.
  /// [integratedGradientsAttribution] An attribution method that computes Aumann-Shapley values taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  /// [outputIndices] If populated, only returns attributions that have output_index contained in output_indices. It must be an ndarray of integers, with the same shape of the output it's explaining. If not populated, returns attributions for top_k indices of outputs. If neither top_k nor output_indices is populated, returns the argmax index of the outputs. Only applicable to Models that predict multiple outputs (e,g, multi-class Models that predict multiple classes).
  /// [sampledShapleyAttribution] An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features. Refer to this paper for model details: https://arxiv.org/abs/1306.4265.
  /// [topK] If populated, returns attributions for top K indices of outputs (defaults to 1). Only applies to Models that predicts more than one outputs (e,g, multi-class Models). When set to -1, returns explanations for all outputs.
  /// [xraiAttribution] An attribution method that redistributes Integrated Gradients attribution to segmented regions, taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 XRAI currently performs better on natural images, like a picture of a house or an animal. If the images are taken in artificial environments, like a lab or manufacturing line, or from diagnostic equipment, like x-rays or quality-control cameras, use Integrated Gradients instead.
  const GoogleCloudAiplatformV1ExplanationParametersResponse({
    required this.examples,
    required this.integratedGradientsAttribution,
    required this.outputIndices,
    required this.sampledShapleyAttribution,
    required this.topK,
    required this.xraiAttribution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'examples': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1ExamplesResponse, Map<String, dynamic>>(examples, (value) => value.toMap()),
      'integratedGradientsAttribution': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1IntegratedGradientsAttributionResponse, Map<String, dynamic>>(integratedGradientsAttribution, (value) => value.toMap()),
      'outputIndices': outputIndices,
      'sampledShapleyAttribution': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1SampledShapleyAttributionResponse, Map<String, dynamic>>(sampledShapleyAttribution, (value) => value.toMap()),
      'topK': topK,
      'xraiAttribution': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1XraiAttributionResponse, Map<String, dynamic>>(xraiAttribution, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1ExplanationParametersResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ExplanationParametersResponse(
      examples: pulumi.Input.fromValue(GoogleCloudAiplatformV1ExamplesResponse.fromMap((map['examples']! as Map).cast<String, dynamic>())),
      integratedGradientsAttribution: pulumi.Input.fromValue(GoogleCloudAiplatformV1IntegratedGradientsAttributionResponse.fromMap((map['integratedGradientsAttribution']! as Map).cast<String, dynamic>())),
      outputIndices: pulumi.Input.fromValue((map['outputIndices'] as List).cast<dynamic>()),
      sampledShapleyAttribution: pulumi.Input.fromValue(GoogleCloudAiplatformV1SampledShapleyAttributionResponse.fromMap((map['sampledShapleyAttribution']! as Map).cast<String, dynamic>())),
      topK: pulumi.Input.fromValue(map['topK'] as int),
      xraiAttribution: pulumi.Input.fromValue(GoogleCloudAiplatformV1XraiAttributionResponse.fromMap((map['xraiAttribution']! as Map).cast<String, dynamic>())),
    );
  }
}

