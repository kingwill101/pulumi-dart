// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterWorkloadAutoscalerProfile {
  /// Specifies whether KEDA Autoscaler can be used for workloads.
  final pulumi.Input<bool>? kedaEnabled;
  /// Specifies whether Vertical Pod Autoscaler should be enabled.
  final pulumi.Input<bool>? verticalPodAutoscalerEnabled;

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
      kedaEnabled: (() { final guardedValue = map['kedaEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      verticalPodAutoscalerEnabled: (() { final guardedValue = map['verticalPodAutoscalerEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

