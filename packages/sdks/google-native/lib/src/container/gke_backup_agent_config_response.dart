// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Backup for GKE Agent.
class GkeBackupAgentConfigResponse {
  /// Whether the Backup for GKE agent is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GkeBackupAgentConfigResponse].
  /// [enabled] Whether the Backup for GKE agent is enabled for this cluster.
  GkeBackupAgentConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GkeBackupAgentConfigResponse.fromMap(Map<String, dynamic> map) {
    return GkeBackupAgentConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

