// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin {
  final bool enabled;

  /// Creates a new [GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin].
  /// [enabled] Required.
  GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin(
      enabled: map['enabled'] as bool,
    );
  }
}

