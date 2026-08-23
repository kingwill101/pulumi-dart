// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigSliceControllerConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigSliceControllerConfig].
  /// [enabled] Required.
  const ClusterAddonsConfigSliceControllerConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigSliceControllerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigSliceControllerConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
