// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterP2pOciRegistryPlugin {
  /// Boolean flag whether the p2p-oci-registry-plugin should be enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterP2pOciRegistryPlugin].
  /// [enabled] Boolean flag whether the p2p-oci-registry-plugin should be enabled or not.
  const KubernetesClusterP2pOciRegistryPlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterP2pOciRegistryPlugin.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterP2pOciRegistryPlugin(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
