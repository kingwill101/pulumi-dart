// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterCorednsAutoscaler {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetKubernetesClusterCorednsAutoscaler].
  /// [enabled] Required.
  const GetKubernetesClusterCorednsAutoscaler({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterCorednsAutoscaler.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterCorednsAutoscaler(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
