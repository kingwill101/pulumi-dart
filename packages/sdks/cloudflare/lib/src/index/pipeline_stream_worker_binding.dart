// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineStreamWorkerBinding {
  /// Indicates that the worker binding is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [PipelineStreamWorkerBinding].
  /// [enabled] Indicates that the worker binding is enabled.
  const PipelineStreamWorkerBinding({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory PipelineStreamWorkerBinding.fromMap(Map<String, dynamic> map) {
    return PipelineStreamWorkerBinding(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
