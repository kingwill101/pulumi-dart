// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_assignment_resource_selector_selector.dart';

class GroupPolicyAssignmentResourceSelector {
  /// Specifies a name for the resource selector.
  final pulumi.Input<String?>? name;
  /// One or more `resourceSelector` block as defined below.
  final pulumi.Input<List<GroupPolicyAssignmentResourceSelectorSelector>> selectors;

  /// Creates a new [GroupPolicyAssignmentResourceSelector].
  /// [name] Specifies a name for the resource selector.
  /// [selectors] One or more `resourceSelector` block as defined below.
  const GroupPolicyAssignmentResourceSelector({
    this.name,
    required this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'selectors': pulumi.Input.mapInputValue<List<GroupPolicyAssignmentResourceSelectorSelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<GroupPolicyAssignmentResourceSelectorSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GroupPolicyAssignmentResourceSelector.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAssignmentResourceSelector(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectors: pulumi.Input.fromValue(pulumi.Input.decodeList<GroupPolicyAssignmentResourceSelectorSelector>(map['selectors']!, (value) => GroupPolicyAssignmentResourceSelectorSelector.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
