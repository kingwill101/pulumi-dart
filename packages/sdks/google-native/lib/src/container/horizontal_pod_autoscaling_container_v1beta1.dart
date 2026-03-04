// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
class HorizontalPodAutoscalingContainerV1beta1 {
  /// Whether the Horizontal Pod Autoscaling feature is enabled in the cluster. When enabled, it ensures that metrics are collected into Stackdriver Monitoring.
  final pulumi.Input<bool>? disabled;

  /// Creates a new [HorizontalPodAutoscalingContainerV1beta1].
  /// [disabled] Whether the Horizontal Pod Autoscaling feature is enabled in the cluster. When enabled, it ensures that metrics are collected into Stackdriver Monitoring.
  HorizontalPodAutoscalingContainerV1beta1({this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': ?disabled};
  }

  factory HorizontalPodAutoscalingContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return HorizontalPodAutoscalingContainerV1beta1(
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
