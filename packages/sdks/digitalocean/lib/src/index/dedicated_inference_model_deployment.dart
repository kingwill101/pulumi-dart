// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_inference_model_deployment_accelerator.dart';

class DedicatedInferenceModelDeployment {
  /// The GPU accelerators to allocate for this model deployment. Each `accelerators` block supports:
  final pulumi.Input<List<DedicatedInferenceModelDeploymentAccelerator>> accelerators;
  /// The unique ID of the model.
  final pulumi.Input<String>? modelId;
  /// The provider of the model (e.g. `digitalocean`, `huggingface`).
  final pulumi.Input<String> modelProvider;
  /// The slug identifier for the model to deploy.
  final pulumi.Input<String> modelSlug;
  /// The provider-specific model ID. Required when modelProvider is 'hugging_face', optional for 'modelcatalog'.
  final pulumi.Input<String>? providerModelId;

  /// Creates a new [DedicatedInferenceModelDeployment].
  /// [accelerators] The GPU accelerators to allocate for this model deployment. Each `accelerators` block supports:
  /// [modelId] The unique ID of the model.
  /// [modelProvider] The provider of the model (e.g. `digitalocean`, `huggingface`).
  /// [modelSlug] The slug identifier for the model to deploy.
  /// [providerModelId] The provider-specific model ID. Required when modelProvider is 'hugging_face', optional for 'modelcatalog'.
  const DedicatedInferenceModelDeployment({
    required this.accelerators,
    this.modelId,
    required this.modelProvider,
    required this.modelSlug,
    this.providerModelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': pulumi.Input.mapInputValue<List<DedicatedInferenceModelDeploymentAccelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<DedicatedInferenceModelDeploymentAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modelId': ?modelId,
      'modelProvider': modelProvider,
      'modelSlug': modelSlug,
      'providerModelId': ?providerModelId,
    };
  }

  factory DedicatedInferenceModelDeployment.fromMap(Map<String, dynamic> map) {
    return DedicatedInferenceModelDeployment(
      accelerators: pulumi.Input.fromValue(pulumi.Input.decodeList<DedicatedInferenceModelDeploymentAccelerator>(map['accelerators']!, (value) => DedicatedInferenceModelDeploymentAccelerator.fromMap((value as Map).cast<String, dynamic>()))),
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelProvider: pulumi.Input.fromValue(map['modelProvider'] as String),
      modelSlug: pulumi.Input.fromValue(map['modelSlug'] as String),
      providerModelId: (() { final guardedValue = map['providerModelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
