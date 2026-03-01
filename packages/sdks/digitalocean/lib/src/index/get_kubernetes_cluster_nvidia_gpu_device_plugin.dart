// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterNvidiaGpuDevicePlugin {
  final bool enabled;

  /// Creates a new [GetKubernetesClusterNvidiaGpuDevicePlugin].
  /// [enabled] Required.
  GetKubernetesClusterNvidiaGpuDevicePlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterNvidiaGpuDevicePlugin.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterNvidiaGpuDevicePlugin(
      enabled: map['enabled'] as bool,
    );
  }
}

