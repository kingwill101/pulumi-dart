// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterNfsCsiPlugin {
  /// Boolean flag whether the NFS CSI plugin should be enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterNfsCsiPlugin].
  /// [enabled] Boolean flag whether the NFS CSI plugin should be enabled or not.
  const KubernetesClusterNfsCsiPlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterNfsCsiPlugin.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNfsCsiPlugin(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
