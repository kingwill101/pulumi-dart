// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterSecretSyncConfigRotationConfig {
  /// Enable the Secret sync auto rotation.
  final pulumi.Input<bool> enabled;
  /// The interval between two consecutive rotations. Default rotation interval is 2 minutes
  final pulumi.Input<String> rotationInterval;

  /// Creates a new [GetClusterSecretSyncConfigRotationConfig].
  /// [enabled] Enable the Secret sync auto rotation.
  /// [rotationInterval] The interval between two consecutive rotations. Default rotation interval is 2 minutes
  const GetClusterSecretSyncConfigRotationConfig({
    required this.enabled,
    required this.rotationInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rotationInterval': rotationInterval,
    };
  }

  factory GetClusterSecretSyncConfigRotationConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterSecretSyncConfigRotationConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      rotationInterval: pulumi.Input.fromValue(map['rotationInterval'] as String),
    );
  }
}

