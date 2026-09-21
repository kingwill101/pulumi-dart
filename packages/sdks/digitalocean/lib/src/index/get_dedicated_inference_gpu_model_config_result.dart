// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inference_gpu_model_config_gpu_model_config.dart';

/// Result data returned by getDedicatedInferenceGpuModelConfig.
class GetDedicatedInferenceGpuModelConfigResult {
  /// The list of supported GPU and model combinations. Each element contains:
  final List<GetDedicatedInferenceGpuModelConfigGpuModelConfig>? gpuModelConfigs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;

  /// Creates a new [GetDedicatedInferenceGpuModelConfigResult].
  /// [gpuModelConfigs] The list of supported GPU and model combinations. Each element contains:
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetDedicatedInferenceGpuModelConfigResult({
    this.gpuModelConfigs,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuModelConfigs': ?(() { final guardedValue = gpuModelConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferenceGpuModelConfigGpuModelConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
    };
  }

  factory GetDedicatedInferenceGpuModelConfigResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceGpuModelConfigResult(
      gpuModelConfigs: (() { final guardedValue = map['gpuModelConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferenceGpuModelConfigGpuModelConfig>(guardedValue, (value) => GetDedicatedInferenceGpuModelConfigGpuModelConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
