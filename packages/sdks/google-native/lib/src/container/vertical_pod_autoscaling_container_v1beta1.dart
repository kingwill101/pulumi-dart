// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.
class VerticalPodAutoscalingContainerV1beta1 {
  /// Enables vertical pod autoscaling.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [VerticalPodAutoscalingContainerV1beta1].
  /// [enabled] Enables vertical pod autoscaling.
  VerticalPodAutoscalingContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory VerticalPodAutoscalingContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return VerticalPodAutoscalingContainerV1beta1(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

