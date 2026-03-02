// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceConnectionPoolConfig {
  /// Whether to enabled Managed Connection Pool.
  final pulumi.Input<bool> enabled;
  final pulumi.Input<Map<String, String>>? flags;
  /// (Output)
  /// The number of running poolers per instance.
  final pulumi.Input<int>? poolerCount;

  /// Creates a new [InstanceConnectionPoolConfig].
  /// [enabled] Whether to enabled Managed Connection Pool.
  /// [flags] Optional.
  /// [poolerCount] (Output)
  InstanceConnectionPoolConfig({
    required this.enabled,
    this.flags,
    this.poolerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'flags': ?flags,
      'poolerCount': ?poolerCount,
    };
  }

  factory InstanceConnectionPoolConfig.fromMap(Map<String, dynamic> map) {
    return InstanceConnectionPoolConfig(
      enabled: (map['enabled'] as bool).input(),
      flags: map['flags'] == null ? null : ((map['flags'] as Map).cast<String, String>()).input(),
      poolerCount: map['poolerCount'] == null ? null : (map['poolerCount'] as int).input(),
    );
  }
}

