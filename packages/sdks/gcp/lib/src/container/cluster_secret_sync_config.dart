// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_secret_sync_config_rotation_config.dart';

class ClusterSecretSyncConfig {
  /// Enable the Sync as K8s secret feature for this cluster.
  final pulumi.Input<bool> enabled;
  /// config for secret sync auto rotation. Structure is docuemented below
  final pulumi.Input<ClusterSecretSyncConfigRotationConfig?>? rotationConfig;

  /// Creates a new [ClusterSecretSyncConfig].
  /// [enabled] Enable the Sync as K8s secret feature for this cluster.
  /// [rotationConfig] config for secret sync auto rotation. Structure is docuemented below
  const ClusterSecretSyncConfig({
    required this.enabled,
    this.rotationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rotationConfig': ?pulumi.Input.mapOptionalInputValue<ClusterSecretSyncConfigRotationConfig, Map<String, dynamic>>(rotationConfig, (value) => value.toMap()),
    };
  }

  factory ClusterSecretSyncConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSecretSyncConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      rotationConfig: (() { final guardedValue = map['rotationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSecretSyncConfigRotationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
