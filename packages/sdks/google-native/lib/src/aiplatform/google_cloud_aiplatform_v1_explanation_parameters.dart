// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_examples.dart';
import 'google_cloud_aiplatform_v1_integrated_gradients_attribution.dart';
import 'google_cloud_aiplatform_v1_sampled_shapley_attribution.dart';
import 'google_cloud_aiplatform_v1_xrai_attribution.dart';

/// Parameters to configure explaining for Model's predictions.
class GoogleCloudAiplatformV1ExplanationParameters {
  /// Example-based explanations that returns the nearest neighbors from the provided dataset.
  final pulumi.Input<GoogleCloudAiplatformV1Examples>? examples;
  /// An attribution method that computes Aumann-Shapley values taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  final pulumi.Input<GoogleCloudAiplatformV1IntegratedGradientsAttribution>? integratedGradientsAttribution;
  /// If populated, only returns attributions that have output_index contained in output_indices. It must be an ndarray of integers, with the same shape of the output it's explaining. If not populated, returns attributions for top_k indices of outputs. If neither top_k nor output_indices is populated, returns the argmax index of the outputs. Only applicable to Models that predict multiple outputs (e,g, multi-class Models that predict multiple classes).
  final pulumi.Input<List<dynamic>>? outputIndices;
  /// An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features. Refer to this paper for model details: https://arxiv.org/abs/1306.4265.
  final pulumi.Input<GoogleCloudAiplatformV1SampledShapleyAttribution>? sampledShapleyAttribution;
  /// If populated, returns attributions for top K indices of outputs (defaults to 1). Only applies to Models that predicts more than one outputs (e,g, multi-class Models). When set to -1, returns explanations for all outputs.
  final pulumi.Input<int>? topK;
  /// An attribution method that redistributes Integrated Gradients attribution to segmented regions, taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 XRAI currently performs better on natural images, like a picture of a house or an animal. If the images are taken in artificial environments, like a lab or manufacturing line, or from diagnostic equipment, like x-rays or quality-control cameras, use Integrated Gradients instead.
  final pulumi.Input<GoogleCloudAiplatformV1XraiAttribution>? xraiAttribution;

  /// Creates a new [GoogleCloudAiplatformV1ExplanationParameters].
  /// [examples] Example-based explanations that returns the nearest neighbors from the provided dataset.
  /// [integratedGradientsAttribution] An attribution method that computes Aumann-Shapley values taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  /// [outputIndices] If populated, only returns attributions that have output_index contained in output_indices. It must be an ndarray of integers, with the same shape of the output it's explaining. If not populated, returns attributions for top_k indices of outputs. If neither top_k nor output_indices is populated, returns the argmax index of the outputs. Only applicable to Models that predict multiple outputs (e,g, multi-class Models that predict multiple classes).
  /// [sampledShapleyAttribution] An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features. Refer to this paper for model details: https://arxiv.org/abs/1306.4265.
  /// [topK] If populated, returns attributions for top K indices of outputs (defaults to 1). Only applies to Models that predicts more than one outputs (e,g, multi-class Models). When set to -1, returns explanations for all outputs.
  /// [xraiAttribution] An attribution method that redistributes Integrated Gradients attribution to segmented regions, taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 XRAI currently performs better on natural images, like a picture of a house or an animal. If the images are taken in artificial environments, like a lab or manufacturing line, or from diagnostic equipment, like x-rays or quality-control cameras, use Integrated Gradients instead.
  GoogleCloudAiplatformV1ExplanationParameters({
    this.examples,
    this.integratedGradientsAttribution,
    this.outputIndices,
    this.sampledShapleyAttribution,
    this.topK,
    this.xraiAttribution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'examples': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1Examples, Map<String, dynamic>>(examples, (value) => value.toMap()),
      'integratedGradientsAttribution': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1IntegratedGradientsAttribution, Map<String, dynamic>>(integratedGradientsAttribution, (value) => value.toMap()),
      'outputIndices': ?outputIndices,
      'sampledShapleyAttribution': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1SampledShapleyAttribution, Map<String, dynamic>>(sampledShapleyAttribution, (value) => value.toMap()),
      'topK': ?topK,
      'xraiAttribution': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1XraiAttribution, Map<String, dynamic>>(xraiAttribution, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1ExplanationParameters.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ExplanationParameters(
      examples: (() { final guardedValue = map['examples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1Examples.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integratedGradientsAttribution: (() { final guardedValue = map['integratedGradientsAttribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1IntegratedGradientsAttribution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputIndices: (() { final guardedValue = map['outputIndices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      sampledShapleyAttribution: (() { final guardedValue = map['sampledShapleyAttribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1SampledShapleyAttribution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      topK: (() { final guardedValue = map['topK']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      xraiAttribution: (() { final guardedValue = map['xraiAttribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1XraiAttribution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

