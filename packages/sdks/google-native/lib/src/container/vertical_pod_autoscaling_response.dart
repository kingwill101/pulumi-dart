// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.
class VerticalPodAutoscalingResponse {
  /// Enables vertical pod autoscaling.
  final pulumi.Input<bool> enabled;

  /// Creates a new [VerticalPodAutoscalingResponse].
  /// [enabled] Enables vertical pod autoscaling.
  VerticalPodAutoscalingResponse({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory VerticalPodAutoscalingResponse.fromMap(Map<String, dynamic> map) {
    return VerticalPodAutoscalingResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
