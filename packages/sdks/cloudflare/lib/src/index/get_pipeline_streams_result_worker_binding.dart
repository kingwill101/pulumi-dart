// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineStreamsResultWorkerBinding {
  /// Indicates that the worker binding is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetPipelineStreamsResultWorkerBinding].
  /// [enabled] Indicates that the worker binding is enabled.
  const GetPipelineStreamsResultWorkerBinding({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetPipelineStreamsResultWorkerBinding.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamsResultWorkerBinding(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
