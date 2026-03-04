// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerInstanceFlexibilityPolicyResponseComputeBeta {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final pulumi.Input<Map<String, String>> instanceSelectionLists;

  /// Creates a new [InstanceGroupManagerInstanceFlexibilityPolicyResponseComputeBeta].
  /// [instanceSelectionLists] Named instance selections configuring properties that the group will use when creating new VMs.
  InstanceGroupManagerInstanceFlexibilityPolicyResponseComputeBeta({
    required this.instanceSelectionLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instanceSelectionLists': instanceSelectionLists};
  }

  factory InstanceGroupManagerInstanceFlexibilityPolicyResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerInstanceFlexibilityPolicyResponseComputeBeta(
      instanceSelectionLists: pulumi.Input.fromValue(
        (map['instanceSelectionLists'] as Map).cast<String, String>(),
      ),
    );
  }
}
