// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterAmdGpuDevicePlugin {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetKubernetesClusterAmdGpuDevicePlugin].
  /// [enabled] Required.
  GetKubernetesClusterAmdGpuDevicePlugin({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetKubernetesClusterAmdGpuDevicePlugin.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetKubernetesClusterAmdGpuDevicePlugin(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
