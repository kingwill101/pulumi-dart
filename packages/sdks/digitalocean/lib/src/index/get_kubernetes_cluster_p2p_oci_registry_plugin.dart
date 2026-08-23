// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterP2pOciRegistryPlugin {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetKubernetesClusterP2pOciRegistryPlugin].
  /// [enabled] Required.
  const GetKubernetesClusterP2pOciRegistryPlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterP2pOciRegistryPlugin.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterP2pOciRegistryPlugin(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
