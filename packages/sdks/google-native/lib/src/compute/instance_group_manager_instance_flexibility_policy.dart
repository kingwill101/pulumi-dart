// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerInstanceFlexibilityPolicy {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final pulumi.Input<Map<String, String>>? instanceSelectionLists;
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final pulumi.Input<Map<String, String>>? instanceSelections;

  /// Creates a new [InstanceGroupManagerInstanceFlexibilityPolicy].
  /// [instanceSelectionLists] Named instance selections configuring properties that the group will use when creating new VMs.
  /// [instanceSelections] Named instance selections configuring properties that the group will use when creating new VMs.
  InstanceGroupManagerInstanceFlexibilityPolicy({
    this.instanceSelectionLists,
    this.instanceSelections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSelectionLists': ?instanceSelectionLists,
      'instanceSelections': ?instanceSelections,
    };
  }

  factory InstanceGroupManagerInstanceFlexibilityPolicy.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceFlexibilityPolicy(
      instanceSelectionLists: (() { final guardedValue = map['instanceSelectionLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      instanceSelections: (() { final guardedValue = map['instanceSelections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

