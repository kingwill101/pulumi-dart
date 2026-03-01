// ignore_for_file: unused_element, unnecessary_cast


class GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig {
  final bool enabled;

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
      enabled: map['enabled'] as bool,
    );
  }
}

