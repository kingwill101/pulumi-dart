// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigDnsCacheConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigDnsCacheConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigDnsCacheConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigDnsCacheConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigDnsCacheConfig(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

