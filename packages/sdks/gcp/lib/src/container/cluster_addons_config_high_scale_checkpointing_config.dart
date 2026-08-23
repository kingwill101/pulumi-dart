// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigHighScaleCheckpointingConfig {
  /// Whether the High Scale Checkpointing addon is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigHighScaleCheckpointingConfig].
  /// [enabled] Whether the High Scale Checkpointing addon is enabled.
  const ClusterAddonsConfigHighScaleCheckpointingConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigHighScaleCheckpointingConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigHighScaleCheckpointingConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
