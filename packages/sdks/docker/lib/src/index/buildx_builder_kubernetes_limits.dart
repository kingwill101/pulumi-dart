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
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ephemeralStorage: (() { final guardedValue = map['ephemeralStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

