// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final pulumi.Input<Map<String, String>>? instanceSelectionLists;

  /// Creates a new [InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta].
  /// [instanceSelectionLists] Named instance selections configuring properties that the group will use when creating new VMs.
  InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta({
    this.instanceSelectionLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSelectionLists': ?instanceSelectionLists,
    };
  }

  factory InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta(
      instanceSelectionLists: map['instanceSelectionLists'] == null ? null : ((map['instanceSelectionLists'] as Map).cast<String, String>()).input(),
    );
  }
}

