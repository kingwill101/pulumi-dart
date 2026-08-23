// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterNvidiaGpuDraDriver {
  /// Boolean flag whether the component should be enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterNvidiaGpuDraDriver].
  /// [enabled] Boolean flag whether the component should be enabled or not.
  const KubernetesClusterNvidiaGpuDraDriver({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterNvidiaGpuDraDriver.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNvidiaGpuDraDriver(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
