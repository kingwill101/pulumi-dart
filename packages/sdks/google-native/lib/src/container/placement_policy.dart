// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_policy_type.dart';

/// PlacementPolicy defines the placement policy used by the node pool.
class PlacementPolicy {
  /// If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  final pulumi.Input<String>? policyName;

  /// Optional. TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  final pulumi.Input<String>? tpuTopology;

  /// The type of placement.
  final pulumi.Input<PlacementPolicyType>? type;

  /// Creates a new [PlacementPolicy].
  /// [policyName] If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  /// [tpuTopology] Optional. TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  /// [type] The type of placement.
  PlacementPolicy({this.policyName, this.tpuTopology, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': ?policyName,
      'tpuTopology': ?tpuTopology,
      'type': ?pulumi.Input.mapOptionalInputValue<PlacementPolicyType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory PlacementPolicy.fromMap(Map<String, dynamic> map) {
    return PlacementPolicy(
      policyName: (() {
        final guardedValue = map['policyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tpuTopology: (() {
        final guardedValue = map['tpuTopology'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PlacementPolicyType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
