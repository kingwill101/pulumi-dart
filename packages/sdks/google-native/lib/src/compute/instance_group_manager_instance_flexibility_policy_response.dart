// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerInstanceFlexibilityPolicyResponse {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final pulumi.Input<Map<String, String>> instanceSelectionLists;

  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final pulumi.Input<Map<String, String>> instanceSelections;

  /// Creates a new [InstanceGroupManagerInstanceFlexibilityPolicyResponse].
  /// [instanceSelectionLists] Named instance selections configuring properties that the group will use when creating new VMs.
  /// [instanceSelections] Named instance selections configuring properties that the group will use when creating new VMs.
  InstanceGroupManagerInstanceFlexibilityPolicyResponse({
    required this.instanceSelectionLists,
    required this.instanceSelections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSelectionLists': instanceSelectionLists,
      'instanceSelections': instanceSelections,
    };
  }

  factory InstanceGroupManagerInstanceFlexibilityPolicyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerInstanceFlexibilityPolicyResponse(
      instanceSelectionLists: pulumi.Input.fromValue(
        (map['instanceSelectionLists'] as Map).cast<String, String>(),
      ),
      instanceSelections: pulumi.Input.fromValue(
        (map['instanceSelections'] as Map).cast<String, String>(),
      ),
    );
  }
}
