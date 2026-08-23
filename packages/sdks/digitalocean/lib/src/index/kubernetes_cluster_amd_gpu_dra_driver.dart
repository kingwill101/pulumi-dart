// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterAmdGpuDraDriver {
  /// Boolean flag whether the component should be enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterAmdGpuDraDriver].
  /// [enabled] Boolean flag whether the component should be enabled or not.
  const KubernetesClusterAmdGpuDraDriver({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterAmdGpuDraDriver.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterAmdGpuDraDriver(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
