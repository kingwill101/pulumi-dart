// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceConnectionPoolConfig {
  /// Whether to enabled Managed Connection Pool.
  final pulumi.Input<bool> enabled;
  /// Flags for configuring managed connection pooling when it is enabled.
  /// These flags will only be set if 'connection_pool_config.enabled' is
  /// true.
  /// Please see
  /// https://cloud.google.com/alloydb/docs/configure-managed-connection-pooling#configuration-options
  /// for a comprehensive list of flags that can be set. To specify the flags
  /// in Terraform, please remove the "connection-pooling-" prefix and use
  /// underscores instead of dashes in the name. For example,
  /// "connection-pooling-pool-mode" would be "poolMode".
  final pulumi.Input<Map<String, String>> flags;
  /// The number of running poolers per instance.
  final pulumi.Input<int> poolerCount;

  /// Creates a new [GetInstanceConnectionPoolConfig].
  /// [enabled] Whether to enabled Managed Connection Pool.
  /// [flags] Flags for configuring managed connection pooling when it is enabled.
  /// [poolerCount] The number of running poolers per instance.
  const GetInstanceConnectionPoolConfig({
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
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      flags: pulumi.Input.fromValue((map['flags'] as Map).cast<String, String>()),
      poolerCount: pulumi.Input.fromValue(map['poolerCount'] as int),
    );
  }
}
