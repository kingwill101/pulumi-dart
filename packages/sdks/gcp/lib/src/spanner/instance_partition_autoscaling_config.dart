// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_partition_autoscaling_config_autoscaling_limits.dart';
import 'instance_partition_autoscaling_config_autoscaling_targets.dart';

class InstancePartitionAutoscalingConfig {
  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events. Users can define the minimum and
  /// maximum compute capacity allocated to the instance partition, and the autoscaler will
  /// only scale within that range. Users can either use nodes or processing
  /// units to specify the limits, but should use the same unit to set both the
  /// minLimit and max_limit.
  /// Structure is documented below.
  final pulumi.Input<InstancePartitionAutoscalingConfigAutoscalingLimits>? autoscalingLimits;
  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events
  /// Structure is documented below.
  final pulumi.Input<InstancePartitionAutoscalingConfigAutoscalingTargets>? autoscalingTargets;

  /// Creates a new [InstancePartitionAutoscalingConfig].
  /// [autoscalingLimits] Defines scale in controls to reduce the risk of response latency
  /// [autoscalingTargets] Defines scale in controls to reduce the risk of response latency
  const InstancePartitionAutoscalingConfig({
    this.autoscalingLimits,
    this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingLimits': ?pulumi.Input.mapOptionalInputValue<InstancePartitionAutoscalingConfigAutoscalingLimits, Map<String, dynamic>>(autoscalingLimits, (value) => value.toMap()),
      'autoscalingTargets': ?pulumi.Input.mapOptionalInputValue<InstancePartitionAutoscalingConfigAutoscalingTargets, Map<String, dynamic>>(autoscalingTargets, (value) => value.toMap()),
    };
  }

  factory InstancePartitionAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return InstancePartitionAutoscalingConfig(
      autoscalingLimits: (() { final guardedValue = map['autoscalingLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePartitionAutoscalingConfigAutoscalingLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoscalingTargets: (() { final guardedValue = map['autoscalingTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePartitionAutoscalingConfigAutoscalingTargets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
