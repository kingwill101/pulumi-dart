// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_assignment_resource_selector_selector.dart';

class GroupPolicyAssignmentResourceSelector {
  /// Specifies a name for the resource selector.
  final String? name;
  /// One or more `resource_selector` block as defined below.
  final List<GroupPolicyAssignmentResourceSelectorSelector> selectors;

  /// Creates a new [GroupPolicyAssignmentResourceSelector].
  /// [name] Specifies a name for the resource selector.
  /// [selectors] One or more `resource_selector` block as defined below.
  GroupPolicyAssignmentResourceSelector({
    this.name,
    required this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'selectors': pulumi.Input.encodeList<GroupPolicyAssignmentResourceSelectorSelector, Map<String, dynamic>>(selectors, (value) => value.toMap()),
    };
  }

  factory GroupPolicyAssignmentResourceSelector.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAssignmentResourceSelector(
      name: map['name'] == null ? null : map['name'] as String,
      selectors: pulumi.Input.decodeList<GroupPolicyAssignmentResourceSelectorSelector>(map['selectors'], (value) => GroupPolicyAssignmentResourceSelectorSelector.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

