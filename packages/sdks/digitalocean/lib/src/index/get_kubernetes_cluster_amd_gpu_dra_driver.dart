// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterAmdGpuDraDriver {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetKubernetesClusterAmdGpuDraDriver].
  /// [enabled] Required.
  const GetKubernetesClusterAmdGpuDraDriver({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterAmdGpuDraDriver.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterAmdGpuDraDriver(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
