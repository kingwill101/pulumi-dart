// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigGcePersistentDiskCsiDriverConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigGcePersistentDiskCsiDriverConfig].
  /// [enabled] Required.
  const ClusterAddonsConfigGcePersistentDiskCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigGcePersistentDiskCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigGcePersistentDiskCsiDriverConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
