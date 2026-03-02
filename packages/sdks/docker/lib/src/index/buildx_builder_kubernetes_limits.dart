// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BuildxBuilderKubernetesLimits {
  /// CPU limit for the Kubernetes pod.
  final pulumi.Input<String>? cpu;
  /// Ephemeral storage limit for the Kubernetes pod.
  final pulumi.Input<String>? ephemeralStorage;
  /// Memory limit for the Kubernetes pod.
  final pulumi.Input<String>? memory;

  /// Creates a new [BuildxBuilderKubernetesLimits].
  /// [cpu] CPU limit for the Kubernetes pod.
  /// [ephemeralStorage] Ephemeral storage limit for the Kubernetes pod.
  /// [memory] Memory limit for the Kubernetes pod.
  BuildxBuilderKubernetesLimits({
    this.cpu,
    this.ephemeralStorage,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'ephemeralStorage': ?ephemeralStorage,
      'memory': ?memory,
    };
  }

  factory BuildxBuilderKubernetesLimits.fromMap(Map<String, dynamic> map) {
    return BuildxBuilderKubernetesLimits(
      cpu: map['cpu'] == null ? null : (map['cpu']! as String).input(),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : (map['ephemeralStorage']! as String).input(),
      memory: map['memory'] == null ? null : (map['memory']! as String).input(),
    );
  }
}

