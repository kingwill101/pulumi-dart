// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterNvidiaGpuDevicePlugin {
  /// Boolean flag whether the component should be enabled or not.
  /// `rdma_shared_device_plugin` - (Optional) Block containing options for the RDMA Shared Device Plugin (k8s-rdma-shared-dev-plugin) component. If not specified, the component will be enabled by default for clusters with GPU nodes connected to a dedicated high-speed networking fabric.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterNvidiaGpuDevicePlugin].
  /// [enabled] Boolean flag whether the component should be enabled or not.
  KubernetesClusterNvidiaGpuDevicePlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterNvidiaGpuDevicePlugin.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNvidiaGpuDevicePlugin(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

