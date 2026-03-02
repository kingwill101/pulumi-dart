// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterAmdGpuDevicePlugin {
  /// Boolean flag whether the component should be enabled or not.
  /// `amd_gpu_device_metrics_exporter_plugin` - (Optional) Block containing options for the AMD GPU device metrics exporter component. If not specified, the component will not be installed in the cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterAmdGpuDevicePlugin].
  /// [enabled] Boolean flag whether the component should be enabled or not.
  KubernetesClusterAmdGpuDevicePlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterAmdGpuDevicePlugin.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterAmdGpuDevicePlugin(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

