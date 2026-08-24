// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineStreamWorkerBinding {
  /// Indicates that the worker binding is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetPipelineStreamWorkerBinding].
  /// [enabled] Indicates that the worker binding is enabled.
  const GetPipelineStreamWorkerBinding({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetPipelineStreamWorkerBinding.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamWorkerBinding(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
