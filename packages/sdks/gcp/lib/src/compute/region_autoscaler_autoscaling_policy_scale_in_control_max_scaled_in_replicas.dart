// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionAutoscalerAutoscalingPolicyScaleInControlMaxScaledInReplicas {
  /// Specifies a fixed number of VM instances. This must be a positive
  /// integer.
  final pulumi.Input<int>? fixed;
  /// Specifies a percentage of instances between 0 to 100%, inclusive.
  /// For example, specify 80 for 80%.
  final pulumi.Input<int>? percent;

  /// Creates a new [RegionAutoscalerAutoscalingPolicyScaleInControlMaxScaledInReplicas].
  /// [fixed] Specifies a fixed number of VM instances. This must be a positive
  /// [percent] Specifies a percentage of instances between 0 to 100%, inclusive.
  RegionAutoscalerAutoscalingPolicyScaleInControlMaxScaledInReplicas({
    this.fixed,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixed': ?fixed,
      'percent': ?percent,
    };
  }

  factory RegionAutoscalerAutoscalingPolicyScaleInControlMaxScaledInReplicas.fromMap(Map<String, dynamic> map) {
    return RegionAutoscalerAutoscalingPolicyScaleInControlMaxScaledInReplicas(
      fixed: map['fixed'] == null ? null : (map['fixed']! as int).input(),
      percent: map['percent'] == null ? null : (map['percent']! as int).input(),
    );
  }
}

