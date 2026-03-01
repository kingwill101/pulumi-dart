// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterWorkloadAutoscalerProfile {
  /// Specifies whether KEDA Autoscaler can be used for workloads.
  final bool? kedaEnabled;
  /// Specifies whether Vertical Pod Autoscaler should be enabled.
  final bool? verticalPodAutoscalerEnabled;

  /// Creates a new [KubernetesClusterWorkloadAutoscalerProfile].
  /// [kedaEnabled] Specifies whether KEDA Autoscaler can be used for workloads.
  /// [verticalPodAutoscalerEnabled] Specifies whether Vertical Pod Autoscaler should be enabled.
  KubernetesClusterWorkloadAutoscalerProfile({
    this.kedaEnabled,
    this.verticalPodAutoscalerEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kedaEnabled': ?kedaEnabled,
      'verticalPodAutoscalerEnabled': ?verticalPodAutoscalerEnabled,
    };
  }

  factory KubernetesClusterWorkloadAutoscalerProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterWorkloadAutoscalerProfile(
      kedaEnabled: map['kedaEnabled'] == null ? null : map['kedaEnabled'] as bool,
      verticalPodAutoscalerEnabled: map['verticalPodAutoscalerEnabled'] == null ? null : map['verticalPodAutoscalerEnabled'] as bool,
    );
  }
}

