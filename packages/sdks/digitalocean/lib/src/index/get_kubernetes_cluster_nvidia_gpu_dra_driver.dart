// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterNvidiaGpuDraDriver {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetKubernetesClusterNvidiaGpuDraDriver].
  /// [enabled] Required.
  const GetKubernetesClusterNvidiaGpuDraDriver({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterNvidiaGpuDraDriver.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterNvidiaGpuDraDriver(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
