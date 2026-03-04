// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_policy_type_container_v1beta1.dart';

/// PlacementPolicy defines the placement policy used by the node pool.
class PlacementPolicyContainerV1beta1 {
  /// If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  final pulumi.Input<String>? policyName;

  /// TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  final pulumi.Input<String>? tpuTopology;

  /// The type of placement.
  final pulumi.Input<PlacementPolicyTypeContainerV1beta1>? type;

  /// Creates a new [PlacementPolicyContainerV1beta1].
  /// [policyName] If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  /// [tpuTopology] TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  /// [type] The type of placement.
  PlacementPolicyContainerV1beta1({
    this.policyName,
    this.tpuTopology,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': ?policyName,
      'tpuTopology': ?tpuTopology,
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            PlacementPolicyTypeContainerV1beta1,
            String
          >(type, (value) => value.wireValue),
    };
  }

  factory PlacementPolicyContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return PlacementPolicyContainerV1beta1(
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
          PlacementPolicyTypeContainerV1beta1.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
