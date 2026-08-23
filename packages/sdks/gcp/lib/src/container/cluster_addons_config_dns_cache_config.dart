// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigDnsCacheConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigDnsCacheConfig].
  /// [enabled] Required.
  const ClusterAddonsConfigDnsCacheConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigDnsCacheConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigDnsCacheConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
