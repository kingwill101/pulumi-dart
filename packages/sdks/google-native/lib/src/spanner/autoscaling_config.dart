// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_limits.dart';
import 'autoscaling_targets.dart';

/// Autoscaling config for an instance.
class AutoscalingConfig {
  /// Autoscaling limits for an instance.
  final pulumi.Input<AutoscalingLimits> autoscalingLimits;
  /// The autoscaling targets for an instance.
  final pulumi.Input<AutoscalingTargets> autoscalingTargets;

  /// Creates a new [AutoscalingConfig].
  /// [autoscalingLimits] Autoscaling limits for an instance.
  /// [autoscalingTargets] The autoscaling targets for an instance.
  AutoscalingConfig({
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingLimits': pulumi.Input.mapInputValue<AutoscalingLimits, Map<String, dynamic>>(autoscalingLimits, (value) => value.toMap()),
      'autoscalingTargets': pulumi.Input.mapInputValue<AutoscalingTargets, Map<String, dynamic>>(autoscalingTargets, (value) => value.toMap()),
    };
  }

  factory AutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfig(
      autoscalingLimits: pulumi.Input.fromValue(AutoscalingLimits.fromMap((map['autoscalingLimits']! as Map).cast<String, dynamic>())),
      autoscalingTargets: pulumi.Input.fromValue(AutoscalingTargets.fromMap((map['autoscalingTargets']! as Map).cast<String, dynamic>())),
    );
  }
}

