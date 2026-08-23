// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterSecretSyncConfigRotationConfig {
  /// Enable the roation in Sync as K8s secret feature for this cluster.
  final pulumi.Input<bool> enabled;
  /// The interval between two consecutive rotations. Default rotation interval is 2 minutes.
  final pulumi.Input<String>? rotationInterval;

  /// Creates a new [ClusterSecretSyncConfigRotationConfig].
  /// [enabled] Enable the roation in Sync as K8s secret feature for this cluster.
  /// [rotationInterval] The interval between two consecutive rotations. Default rotation interval is 2 minutes.
  const ClusterSecretSyncConfigRotationConfig({
    required this.enabled,
    this.rotationInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rotationInterval': ?rotationInterval,
    };
  }

  factory ClusterSecretSyncConfigRotationConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSecretSyncConfigRotationConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      rotationInterval: (() { final guardedValue = map['rotationInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
