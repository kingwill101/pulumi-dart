// ignore_for_file: unused_element, unnecessary_cast


class ClusterPodSecurityPolicyConfig {
  /// Enable the PodSecurityPolicy controller for this cluster.
  /// If enabled, pods must be valid under a PodSecurityPolicy to be created.
  final bool enabled;

  /// Creates a new [ClusterPodSecurityPolicyConfig].
  /// [enabled] Enable the PodSecurityPolicy controller for this cluster.
  ClusterPodSecurityPolicyConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterPodSecurityPolicyConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPodSecurityPolicyConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

