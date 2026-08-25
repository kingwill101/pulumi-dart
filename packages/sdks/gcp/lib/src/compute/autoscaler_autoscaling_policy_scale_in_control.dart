// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaler_autoscaling_policy_scale_in_control_max_scaled_in_replicas.dart';

class AutoscalerAutoscalingPolicyScaleInControl {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<AutoscalerAutoscalingPolicyScaleInControlMaxScaledInReplicas?>? maxScaledInReplicas;
  /// How long back autoscaling should look when computing recommendations
  /// to include directives regarding slower scale down, as described above.
  final pulumi.Input<int?>? timeWindowSec;

  /// Creates a new [AutoscalerAutoscalingPolicyScaleInControl].
  /// [maxScaledInReplicas] A nested object resource.
  /// [timeWindowSec] How long back autoscaling should look when computing recommendations
  const AutoscalerAutoscalingPolicyScaleInControl({
    this.maxScaledInReplicas,
    this.timeWindowSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxScaledInReplicas': ?pulumi.Input.mapOptionalInputValue<AutoscalerAutoscalingPolicyScaleInControlMaxScaledInReplicas, Map<String, dynamic>>(maxScaledInReplicas, (value) => value.toMap()),
      'timeWindowSec': ?timeWindowSec,
    };
  }

  factory AutoscalerAutoscalingPolicyScaleInControl.fromMap(Map<String, dynamic> map) {
    return AutoscalerAutoscalingPolicyScaleInControl(
      maxScaledInReplicas: (() { final guardedValue = map['maxScaledInReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalerAutoscalingPolicyScaleInControlMaxScaledInReplicas.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeWindowSec: (() { final guardedValue = map['timeWindowSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
