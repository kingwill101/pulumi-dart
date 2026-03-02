// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_secret_manager_config_rotation_config.dart';

class GetClusterSecretManagerConfig {
  /// Enable the Secret manager csi component.
  final pulumi.Input<bool> enabled;
  /// Configuration for Secret Manager auto rotation.
  final pulumi.Input<List<GetClusterSecretManagerConfigRotationConfig>> rotationConfigs;

  /// Creates a new [GetClusterSecretManagerConfig].
  /// [enabled] Enable the Secret manager csi component.
  /// [rotationConfigs] Configuration for Secret Manager auto rotation.
  GetClusterSecretManagerConfig({
    required this.enabled,
    required this.rotationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rotationConfigs': pulumi.Input.mapInputValue<List<GetClusterSecretManagerConfigRotationConfig>, List<Map<String, dynamic>>>(rotationConfigs, (value) => pulumi.Input.encodeList<GetClusterSecretManagerConfigRotationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterSecretManagerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterSecretManagerConfig(
      enabled: (map['enabled'] as bool).input(),
      rotationConfigs: (pulumi.Input.decodeList<GetClusterSecretManagerConfigRotationConfig>(map['rotationConfigs'], (value) => GetClusterSecretManagerConfigRotationConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

