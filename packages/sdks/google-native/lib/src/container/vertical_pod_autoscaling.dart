// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.
class VerticalPodAutoscaling {
  /// Enables vertical pod autoscaling.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [VerticalPodAutoscaling].
  /// [enabled] Enables vertical pod autoscaling.
  VerticalPodAutoscaling({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory VerticalPodAutoscaling.fromMap(Map<String, dynamic> map) {
    return VerticalPodAutoscaling(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

