// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterCorednsAutoscaler {
  /// Boolean flag whether the CoreDNS Autoscaler should be enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterCorednsAutoscaler].
  /// [enabled] Boolean flag whether the CoreDNS Autoscaler should be enabled or not.
  const KubernetesClusterCorednsAutoscaler({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterCorednsAutoscaler.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterCorednsAutoscaler(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
