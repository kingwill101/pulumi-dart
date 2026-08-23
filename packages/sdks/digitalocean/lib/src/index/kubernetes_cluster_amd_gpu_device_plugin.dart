// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterAmdGpuDevicePlugin {
  /// Boolean flag whether the component should be enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterAmdGpuDevicePlugin].
  /// [enabled] Boolean flag whether the component should be enabled or not.
  const KubernetesClusterAmdGpuDevicePlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterAmdGpuDevicePlugin.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterAmdGpuDevicePlugin(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
