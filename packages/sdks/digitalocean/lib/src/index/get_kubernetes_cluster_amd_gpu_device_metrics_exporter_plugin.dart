// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin].
  /// [enabled] Required.
  const GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
