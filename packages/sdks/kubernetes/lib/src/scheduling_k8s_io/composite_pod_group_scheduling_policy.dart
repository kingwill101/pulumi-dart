// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_gang_scheduling_policy.dart';

/// CompositePodGroupSchedulingPolicy defines the scheduling configuration for a CompositePodGroup. Exactly one policy must be set.
class CompositePodGroupSchedulingPolicy {
  /// basic specifies that the groups of this composite group should be scheduled independently. This field is immutable.
  final pulumi.Input<Map<String, dynamic>?>? basic;
  /// gang specifies that the groups of this composite group should be scheduled using all-or-nothing semantics.
  final pulumi.Input<CompositeGangSchedulingPolicy?>? gang;

  /// Creates a new [CompositePodGroupSchedulingPolicy].
  /// [basic] basic specifies that the groups of this composite group should be scheduled independently. This field is immutable.
  /// [gang] gang specifies that the groups of this composite group should be scheduled using all-or-nothing semantics.
  const CompositePodGroupSchedulingPolicy({
    this.basic,
    this.gang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?basic,
      'gang': ?pulumi.Input.mapOptionalInputValue<CompositeGangSchedulingPolicy, Map<String, dynamic>>(gang, (value) => value.toMap()),
    };
  }

  factory CompositePodGroupSchedulingPolicy.fromMap(Map<String, dynamic> map) {
    return CompositePodGroupSchedulingPolicy(
      basic: (() { final guardedValue = map['basic']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      gang: (() { final guardedValue = map['gang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompositeGangSchedulingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
