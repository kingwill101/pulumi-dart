// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigGkeBackupAgentConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigGkeBackupAgentConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigGkeBackupAgentConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigGkeBackupAgentConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigGkeBackupAgentConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

