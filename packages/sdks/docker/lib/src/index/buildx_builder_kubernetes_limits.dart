// ignore_for_file: unused_element, unnecessary_cast


class BuildxBuilderKubernetesLimits {
  /// CPU limit for the Kubernetes pod.
  final String? cpu;
  /// Ephemeral storage limit for the Kubernetes pod.
  final String? ephemeralStorage;
  /// Memory limit for the Kubernetes pod.
  final String? memory;

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
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      ephemeralStorage: map['ephemeralStorage'] == null ? null : map['ephemeralStorage'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

