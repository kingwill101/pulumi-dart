// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_policy_assignment_resource_selector_selector.dart';

class ResourceGroupPolicyAssignmentResourceSelector {
  /// Specifies a name for the resource selector.
  final pulumi.Input<String>? name;
  /// One or more `resourceSelector` block as defined below.
  final pulumi.Input<List<ResourceGroupPolicyAssignmentResourceSelectorSelector>> selectors;

  /// Creates a new [ResourceGroupPolicyAssignmentResourceSelector].
  /// [name] Specifies a name for the resource selector.
  /// [selectors] One or more `resourceSelector` block as defined below.
  const ResourceGroupPolicyAssignmentResourceSelector({
    this.name,
    required this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'selectors': pulumi.Input.mapInputValue<List<ResourceGroupPolicyAssignmentResourceSelectorSelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<ResourceGroupPolicyAssignmentResourceSelectorSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceGroupPolicyAssignmentResourceSelector.fromMap(Map<String, dynamic> map) {
    return ResourceGroupPolicyAssignmentResourceSelector(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectors: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceGroupPolicyAssignmentResourceSelectorSelector>(map['selectors']!, (value) => ResourceGroupPolicyAssignmentResourceSelectorSelector.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
