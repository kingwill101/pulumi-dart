// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Backup for GKE Agent.
class GkeBackupAgentConfigResponseContainerV1beta1 {
  /// Whether the Backup for GKE agent is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GkeBackupAgentConfigResponseContainerV1beta1].
  /// [enabled] Whether the Backup for GKE agent is enabled for this cluster.
  const GkeBackupAgentConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GkeBackupAgentConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GkeBackupAgentConfigResponseContainerV1beta1(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

