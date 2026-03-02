// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterAmdGpuDeviceMetricsExporterPlugin {
  /// Boolean flag whether the component is enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterAmdGpuDeviceMetricsExporterPlugin].
  /// [enabled] Boolean flag whether the component is enabled or not.
  KubernetesClusterAmdGpuDeviceMetricsExporterPlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterAmdGpuDeviceMetricsExporterPlugin(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

