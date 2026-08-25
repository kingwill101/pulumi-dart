// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscalerAutoscalingPolicyScaleDownControlMaxScaledDownReplicas {
  /// Specifies a fixed number of VM instances. This must be a positive
  /// integer.
  final pulumi.Input<int?>? fixed;
  /// Specifies a percentage of instances between 0 to 100%, inclusive.
  /// For example, specify 80 for 80%.
  final pulumi.Input<int?>? percent;

  /// Creates a new [AutoscalerAutoscalingPolicyScaleDownControlMaxScaledDownReplicas].
  /// [fixed] Specifies a fixed number of VM instances. This must be a positive
  /// [percent] Specifies a percentage of instances between 0 to 100%, inclusive.
  const AutoscalerAutoscalingPolicyScaleDownControlMaxScaledDownReplicas({
    this.fixed,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixed': ?fixed,
      'percent': ?percent,
    };
  }

  factory AutoscalerAutoscalingPolicyScaleDownControlMaxScaledDownReplicas.fromMap(Map<String, dynamic> map) {
    return AutoscalerAutoscalingPolicyScaleDownControlMaxScaledDownReplicas(
      fixed: (() { final guardedValue = map['fixed']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
