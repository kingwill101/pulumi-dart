// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gang_scheduling_policy.dart';

/// PodGroupPolicy defines the scheduling configuration for a PodGroup.
class PodGroupPolicy {
  /// Basic specifies that the pods in this group should be scheduled using standard Kubernetes scheduling behavior.
  final pulumi.Input<Map<String, dynamic>>? basic;

  /// Gang specifies that the pods in this group should be scheduled using all-or-nothing semantics.
  final pulumi.Input<GangSchedulingPolicy>? gang;

  /// Creates a new [PodGroupPolicy].
  /// [basic] Basic specifies that the pods in this group should be scheduled using standard Kubernetes scheduling behavior.
  /// [gang] Gang specifies that the pods in this group should be scheduled using all-or-nothing semantics.
  PodGroupPolicy({this.basic, this.gang});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?basic,
      'gang':
          ?pulumi.Input.mapOptionalInputValue<
            GangSchedulingPolicy,
            Map<String, dynamic>
          >(gang, (value) => value.toMap()),
    };
  }

  factory PodGroupPolicy.fromMap(Map<String, dynamic> map) {
    return PodGroupPolicy(
      basic: (() {
        final guardedValue = map['basic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      gang: (() {
        final guardedValue = map['gang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GangSchedulingPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
