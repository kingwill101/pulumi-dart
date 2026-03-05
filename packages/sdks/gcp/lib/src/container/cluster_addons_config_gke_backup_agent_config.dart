// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigGkeBackupAgentConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigGkeBackupAgentConfig].
  /// [enabled] Required.
  ClusterAddonsConfigGkeBackupAgentConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigGkeBackupAgentConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigGkeBackupAgentConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

