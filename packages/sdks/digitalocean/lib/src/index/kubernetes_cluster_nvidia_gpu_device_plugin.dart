// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterNvidiaGpuDevicePlugin {
  /// Boolean flag whether the component should be enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterNvidiaGpuDevicePlugin].
  /// [enabled] Boolean flag whether the component should be enabled or not.
  const KubernetesClusterNvidiaGpuDevicePlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterNvidiaGpuDevicePlugin.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNvidiaGpuDevicePlugin(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
