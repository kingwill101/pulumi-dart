// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.
class VerticalPodAutoscalingResponseContainerV1beta1 {
  /// Enables vertical pod autoscaling.
  final pulumi.Input<bool> enabled;

  /// Creates a new [VerticalPodAutoscalingResponseContainerV1beta1].
  /// [enabled] Enables vertical pod autoscaling.
  VerticalPodAutoscalingResponseContainerV1beta1({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory VerticalPodAutoscalingResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VerticalPodAutoscalingResponseContainerV1beta1(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
