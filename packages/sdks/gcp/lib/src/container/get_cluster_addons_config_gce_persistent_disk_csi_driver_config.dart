// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

