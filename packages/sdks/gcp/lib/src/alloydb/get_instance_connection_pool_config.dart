// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceConnectionPoolConfig {
  /// Whether to enabled Managed Connection Pool.
  final pulumi.Input<bool> enabled;
  final pulumi.Input<Map<String, String>> flags;
  /// The number of running poolers per instance.
  final pulumi.Input<int> poolerCount;

  /// Creates a new [GetInstanceConnectionPoolConfig].
  /// [enabled] Whether to enabled Managed Connection Pool.
  /// [flags] Required.
  /// [poolerCount] The number of running poolers per instance.
  GetInstanceConnectionPoolConfig({
    required this.enabled,
    required this.flags,
    required this.poolerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'flags': flags,
      'poolerCount': poolerCount,
    };
  }

  factory GetInstanceConnectionPoolConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceConnectionPoolConfig(
      enabled: (map['enabled'] as bool).input(),
      flags: ((map['flags'] as Map).cast<String, String>()).input(),
      poolerCount: (map['poolerCount'] as int).input(),
    );
  }
}

