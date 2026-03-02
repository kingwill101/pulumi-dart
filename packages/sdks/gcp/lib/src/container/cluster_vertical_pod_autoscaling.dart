// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterVerticalPodAutoscaling {
  /// Enables vertical pod autoscaling
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterVerticalPodAutoscaling].
  /// [enabled] Enables vertical pod autoscaling
  ClusterVerticalPodAutoscaling({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterVerticalPodAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterVerticalPodAutoscaling(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

