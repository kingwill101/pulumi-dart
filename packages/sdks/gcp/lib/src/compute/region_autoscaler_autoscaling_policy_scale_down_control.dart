// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_autoscaler_autoscaling_policy_scale_down_control_max_scaled_down_replicas.dart';

class RegionAutoscalerAutoscalingPolicyScaleDownControl {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<RegionAutoscalerAutoscalingPolicyScaleDownControlMaxScaledDownReplicas>? maxScaledDownReplicas;
  /// How long back autoscaling should look when computing recommendations
  /// to include directives regarding slower scale down, as described above.
  final pulumi.Input<int>? timeWindowSec;

  /// Creates a new [RegionAutoscalerAutoscalingPolicyScaleDownControl].
  /// [maxScaledDownReplicas] A nested object resource.
  /// [timeWindowSec] How long back autoscaling should look when computing recommendations
  const RegionAutoscalerAutoscalingPolicyScaleDownControl({
    this.maxScaledDownReplicas,
    this.timeWindowSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxScaledDownReplicas': ?pulumi.Input.mapOptionalInputValue<RegionAutoscalerAutoscalingPolicyScaleDownControlMaxScaledDownReplicas, Map<String, dynamic>>(maxScaledDownReplicas, (value) => value.toMap()),
      'timeWindowSec': ?timeWindowSec,
    };
  }

  factory RegionAutoscalerAutoscalingPolicyScaleDownControl.fromMap(Map<String, dynamic> map) {
    return RegionAutoscalerAutoscalingPolicyScaleDownControl(
      maxScaledDownReplicas: (() { final guardedValue = map['maxScaledDownReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionAutoscalerAutoscalingPolicyScaleDownControlMaxScaledDownReplicas.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeWindowSec: (() { final guardedValue = map['timeWindowSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

