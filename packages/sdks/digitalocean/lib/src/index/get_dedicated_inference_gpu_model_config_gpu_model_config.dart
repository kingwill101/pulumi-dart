// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedInferenceGpuModelConfigGpuModelConfig {
  /// The GPU slugs that support this model.
  final pulumi.Input<List<String>> gpuSlugs;
  /// Whether the model requires gated access (e.g. a HuggingFace token).
  final pulumi.Input<bool> isModelGated;
  /// The human-readable name of the model.
  final pulumi.Input<String> modelName;
  /// The slug identifier for the model.
  final pulumi.Input<String> modelSlug;

  /// Creates a new [GetDedicatedInferenceGpuModelConfigGpuModelConfig].
  /// [gpuSlugs] The GPU slugs that support this model.
  /// [isModelGated] Whether the model requires gated access (e.g. a HuggingFace token).
  /// [modelName] The human-readable name of the model.
  /// [modelSlug] The slug identifier for the model.
  const GetDedicatedInferenceGpuModelConfigGpuModelConfig({
    required this.gpuSlugs,
    required this.isModelGated,
    required this.modelName,
    required this.modelSlug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuSlugs': gpuSlugs,
      'isModelGated': isModelGated,
      'modelName': modelName,
      'modelSlug': modelSlug,
    };
  }

  factory GetDedicatedInferenceGpuModelConfigGpuModelConfig.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceGpuModelConfigGpuModelConfig(
      gpuSlugs: pulumi.Input.fromValue((map['gpuSlugs'] as List).cast<String>()),
      isModelGated: pulumi.Input.fromValue(map['isModelGated'] as bool),
      modelName: pulumi.Input.fromValue(map['modelName'] as String),
      modelSlug: pulumi.Input.fromValue(map['modelSlug'] as String),
    );
  }
}
