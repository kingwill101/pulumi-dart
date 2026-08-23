// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigHighScaleCheckpointingConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigHighScaleCheckpointingConfig].
  /// [enabled] Required.
  const GetClusterAddonsConfigHighScaleCheckpointingConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigHighScaleCheckpointingConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigHighScaleCheckpointingConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
