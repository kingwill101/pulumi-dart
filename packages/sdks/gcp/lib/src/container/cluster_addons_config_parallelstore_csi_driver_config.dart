// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigParallelstoreCsiDriverConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigParallelstoreCsiDriverConfig].
  /// [enabled] Required.
  const ClusterAddonsConfigParallelstoreCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigParallelstoreCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigParallelstoreCsiDriverConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

