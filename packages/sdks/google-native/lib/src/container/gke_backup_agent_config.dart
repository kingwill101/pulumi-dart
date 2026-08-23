// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Backup for GKE Agent.
class GkeBackupAgentConfig {
  /// Whether the Backup for GKE agent is enabled for this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [GkeBackupAgentConfig].
  /// [enabled] Whether the Backup for GKE agent is enabled for this cluster.
  const GkeBackupAgentConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GkeBackupAgentConfig.fromMap(Map<String, dynamic> map) {
    return GkeBackupAgentConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
