// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inference_model_deployment_accelerator.dart';

class GetDedicatedInferenceModelDeployment {
  /// The GPU accelerators allocated for this model deployment. Each element contains:
  final pulumi.Input<List<GetDedicatedInferenceModelDeploymentAccelerator>> accelerators;
  /// The unique ID of the model.
  final pulumi.Input<String> modelId;
  /// The provider of the model.
  final pulumi.Input<String> modelProvider;
  /// The slug identifier for the model.
  final pulumi.Input<String> modelSlug;
  /// The provider-specific model ID.
  final pulumi.Input<String> providerModelId;

  /// Creates a new [GetDedicatedInferenceModelDeployment].
  /// [accelerators] The GPU accelerators allocated for this model deployment. Each element contains:
  /// [modelId] The unique ID of the model.
  /// [modelProvider] The provider of the model.
  /// [modelSlug] The slug identifier for the model.
  /// [providerModelId] The provider-specific model ID.
  const GetDedicatedInferenceModelDeployment({
    required this.accelerators,
    required this.modelId,
    required this.modelProvider,
    required this.modelSlug,
    required this.providerModelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': pulumi.Input.mapInputValue<List<GetDedicatedInferenceModelDeploymentAccelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<GetDedicatedInferenceModelDeploymentAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modelId': modelId,
      'modelProvider': modelProvider,
      'modelSlug': modelSlug,
      'providerModelId': providerModelId,
    };
  }

  factory GetDedicatedInferenceModelDeployment.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceModelDeployment(
      accelerators: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedInferenceModelDeploymentAccelerator>(map['accelerators']!, (value) => GetDedicatedInferenceModelDeploymentAccelerator.fromMap((value as Map).cast<String, dynamic>()))),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      modelProvider: pulumi.Input.fromValue(map['modelProvider'] as String),
      modelSlug: pulumi.Input.fromValue(map['modelSlug'] as String),
      providerModelId: pulumi.Input.fromValue(map['providerModelId'] as String),
    );
  }
}
