// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterRdmaSharedDevicePlugin {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetKubernetesClusterRdmaSharedDevicePlugin].
  /// [enabled] Required.
  GetKubernetesClusterRdmaSharedDevicePlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterRdmaSharedDevicePlugin.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterRdmaSharedDevicePlugin(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

