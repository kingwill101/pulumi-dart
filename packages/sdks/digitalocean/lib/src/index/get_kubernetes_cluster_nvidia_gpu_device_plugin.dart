// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterNvidiaGpuDevicePlugin {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetKubernetesClusterNvidiaGpuDevicePlugin].
  /// [enabled] Required.
  const GetKubernetesClusterNvidiaGpuDevicePlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterNvidiaGpuDevicePlugin.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterNvidiaGpuDevicePlugin(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
