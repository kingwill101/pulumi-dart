// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_assignment_resource_selector_selector.dart';

class ResourcePolicyAssignmentResourceSelector {
  /// Specifies a name for the resource selector.
  final pulumi.Input<String?>? name;
  /// One or more `resourceSelector` block as defined below.
  final pulumi.Input<List<ResourcePolicyAssignmentResourceSelectorSelector>> selectors;

  /// Creates a new [ResourcePolicyAssignmentResourceSelector].
  /// [name] Specifies a name for the resource selector.
  /// [selectors] One or more `resourceSelector` block as defined below.
  const ResourcePolicyAssignmentResourceSelector({
    this.name,
    required this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'selectors': pulumi.Input.mapInputValue<List<ResourcePolicyAssignmentResourceSelectorSelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<ResourcePolicyAssignmentResourceSelectorSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourcePolicyAssignmentResourceSelector.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyAssignmentResourceSelector(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectors: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourcePolicyAssignmentResourceSelectorSelector>(map['selectors']!, (value) => ResourcePolicyAssignmentResourceSelectorSelector.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
