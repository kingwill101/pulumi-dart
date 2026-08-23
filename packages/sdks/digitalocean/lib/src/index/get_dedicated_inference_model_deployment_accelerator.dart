// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedInferenceModelDeploymentAccelerator {
  /// The slug identifier for the GPU accelerator type.
  final pulumi.Input<String> acceleratorSlug;
  /// The number of accelerator units allocated.
  final pulumi.Input<int> scale;
  /// The accelerator type.
  final pulumi.Input<String> type;

  /// Creates a new [GetDedicatedInferenceModelDeploymentAccelerator].
  /// [acceleratorSlug] The slug identifier for the GPU accelerator type.
  /// [scale] The number of accelerator units allocated.
  /// [type] The accelerator type.
  const GetDedicatedInferenceModelDeploymentAccelerator({
    required this.acceleratorSlug,
    required this.scale,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorSlug': acceleratorSlug,
      'scale': scale,
      'type': type,
    };
  }

  factory GetDedicatedInferenceModelDeploymentAccelerator.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceModelDeploymentAccelerator(
      acceleratorSlug: pulumi.Input.fromValue(map['acceleratorSlug'] as String),
      scale: pulumi.Input.fromValue(map['scale'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
