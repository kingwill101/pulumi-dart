// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Backup for GKE Agent.
class GkeBackupAgentConfigContainerV1beta1 {
  /// Whether the Backup for GKE agent is enabled for this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [GkeBackupAgentConfigContainerV1beta1].
  /// [enabled] Whether the Backup for GKE agent is enabled for this cluster.
  GkeBackupAgentConfigContainerV1beta1({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory GkeBackupAgentConfigContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return GkeBackupAgentConfigContainerV1beta1(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
