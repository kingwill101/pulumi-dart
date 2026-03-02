// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_secret_manager_config_rotation_config.dart';

class ClusterSecretManagerConfig {
  /// Enable the Secret Manager add-on for this cluster.
  final pulumi.Input<bool> enabled;
  /// config for secret manager auto rotation. Structure is docuemented below
  final pulumi.Input<ClusterSecretManagerConfigRotationConfig>? rotationConfig;

  /// Creates a new [ClusterSecretManagerConfig].
  /// [enabled] Enable the Secret Manager add-on for this cluster.
  /// [rotationConfig] config for secret manager auto rotation. Structure is docuemented below
  ClusterSecretManagerConfig({
    required this.enabled,
    this.rotationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rotationConfig': ?pulumi.Input.mapOptionalInputValue<ClusterSecretManagerConfigRotationConfig, Map<String, dynamic>>(rotationConfig, (value) => value.toMap()),
    };
  }

  factory ClusterSecretManagerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSecretManagerConfig(
      enabled: (map['enabled'] as bool).input(),
      rotationConfig: map['rotationConfig'] == null ? null : (ClusterSecretManagerConfigRotationConfig.fromMap((map['rotationConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

