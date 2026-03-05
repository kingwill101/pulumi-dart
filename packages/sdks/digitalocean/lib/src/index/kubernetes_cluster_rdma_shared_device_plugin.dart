// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterRdmaSharedDevicePlugin {
  /// Boolean flag whether the component is enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterRdmaSharedDevicePlugin].
  /// [enabled] Boolean flag whether the component is enabled or not.
  KubernetesClusterRdmaSharedDevicePlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterRdmaSharedDevicePlugin.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterRdmaSharedDevicePlugin(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

