// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterSecretManagerConfigRotationConfig {
  /// Enable the Secret manager auto rotation.
  final pulumi.Input<bool> enabled;
  /// The interval between two consecutive rotations. Default rotation interval is 2 minutes
  final pulumi.Input<String> rotationInterval;

  /// Creates a new [GetClusterSecretManagerConfigRotationConfig].
  /// [enabled] Enable the Secret manager auto rotation.
  /// [rotationInterval] The interval between two consecutive rotations. Default rotation interval is 2 minutes
  GetClusterSecretManagerConfigRotationConfig({
    required this.enabled,
    required this.rotationInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rotationInterval': rotationInterval,
    };
  }

  factory GetClusterSecretManagerConfigRotationConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterSecretManagerConfigRotationConfig(
      enabled: (map['enabled'] as bool).input(),
      rotationInterval: (map['rotationInterval'] as String).input(),
    );
  }
}

