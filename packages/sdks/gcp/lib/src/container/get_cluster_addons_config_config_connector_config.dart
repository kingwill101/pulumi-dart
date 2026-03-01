// ignore_for_file: unused_element, unnecessary_cast


class GetClusterAddonsConfigConfigConnectorConfig {
  final bool enabled;

  /// Creates a new [GetClusterAddonsConfigConfigConnectorConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigConfigConnectorConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigConfigConnectorConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigConfigConnectorConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

